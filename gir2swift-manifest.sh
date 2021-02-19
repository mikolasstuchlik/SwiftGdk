#!/bin/bash

GIR_NAME="Gdk-3.0"
GIR_PKG="gdk-3.0"

function generate_arg-path_arg-g2s-exec_arg-gir-file_arg-gir-pre-files {
    local PACKAGE_PATH=$1
    local G2S_EXEC=$2
    local GIR_PRE_FILES=$3
    local GIR_FILE=$4

    local CALLER=$PWD

    cd $PACKAGE_PATH
    
    local NAME=$(package_name)
    local GIR_PRE_ARGS=`for FILE in ${GIR_PRE_FILES}; do echo -n "-p ${FILE} "; done`
    bash -c "${G2S_EXEC} ${GIR_PRE_ARGS} ${GIR_FILE} | sed -f ${GIR_NAME}.sed | awk -f ${GIR_NAME}.awk > Sources/${NAME}/${GIR_NAME}.swift"
    bash -c "${G2S_EXEC} -o Sources/${NAME} -m ${GIR_NAME}.module ${GIR_PRE_ARGS} ${GIR_FILE}"
    
    if which parallel >/dev/null ; then
        for src in Sources/${NAME}/*-*.swift ; do \
	    echo "sed -f ${GIR_NAME}.sed < ${src} |"				\
	         "awk -f ${GIR_NAME}.awk > ${src}.out" \;			\
	         "mv ${src}.out ${src}" ;					\
        done | parallel
    else
        for src in Sources/${NAME}/*-*.swift ; do
	    sed -f ${GIR_NAME}.sed < ${src} | awk -f ${GIR_NAME}.awk > ${src}.out
	    mv ${src}.out ${src}
        done
    fi
    
    cd $CALLER
}

case $1 in
gir-name) echo $GIR_NAME;;
gir-pkg) echo $GIR_PKG;;
generate) echo $(generate_arg-path_arg-g2s-exec_arg-gir-file_arg-gir-pre-files "$2" "$3" "$4" "$5");;
esac
