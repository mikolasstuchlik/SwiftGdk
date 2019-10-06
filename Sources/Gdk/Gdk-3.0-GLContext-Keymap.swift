import CGLib
import CCairo
import CPango
import CGdkPixbuf
import CGdk
import GLib
import GLibObject
import Pango
import Cairo
import PangoCairo
import GdkPixbuf

// MARK: - GLContext Class

/// The `GLContextProtocol` protocol exposes the methods and properties of an underlying `GdkGLContext` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `GLContext`.
/// Alternatively, use `GLContextRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GdkGLContext` is an object representing the platform-specific
/// OpenGL drawing context.
/// 
/// `GdkGLContexts` are created for a `GdkWindow` using
/// `gdk_window_create_gl_context()`, and the context will match
/// the `GdkVisual` of the window.
/// 
/// A `GdkGLContext` is not tied to any particular normal framebuffer.
/// For instance, it cannot draw to the `GdkWindow` back buffer. The GDK
/// repaint system is in full control of the painting to that. Instead,
/// you can create render buffers or textures and use `gdk_cairo_draw_from_gl()`
/// in the draw function of your widget to draw them. Then GDK will handle
/// the integration of your rendering with that of other widgets.
/// 
/// Support for `GdkGLContext` is platform-specific, context creation
/// can fail, returning `nil` context.
/// 
/// A `GdkGLContext` has to be made "current" in order to start using
/// it, otherwise any OpenGL call will be ignored.
/// 
/// ## Creating a new OpenGL context ##
/// 
/// In order to create a new `GdkGLContext` instance you need a
/// `GdkWindow`, which you typically get during the realize call
/// of a widget.
/// 
/// A `GdkGLContext` is not realized until either `gdk_gl_context_make_current()`,
/// or until it is realized using `gdk_gl_context_realize()`. It is possible to
/// specify details of the GL context like the OpenGL version to be used, or
/// whether the GL context should have extra state validation enabled after
/// calling `gdk_window_create_gl_context()` by calling `gdk_gl_context_realize()`.
/// If the realization fails you have the option to change the settings of the
/// `GdkGLContext` and try again.
/// 
/// ## Using a GdkGLContext ##
/// 
/// You will need to make the `GdkGLContext` the current context
/// before issuing OpenGL calls; the system sends OpenGL commands to
/// whichever context is current. It is possible to have multiple
/// contexts, so you always need to ensure that the one which you
/// want to draw with is the current one before issuing commands:
/// 
/// (C Language Example):
/// ```C
///   gdk_gl_context_make_current (context);
/// ```
/// 
/// You can now perform your drawing using OpenGL commands.
/// 
/// You can check which `GdkGLContext` is the current one by using
/// `gdk_gl_context_get_current()`; you can also unset any `GdkGLContext`
/// that is currently set by calling `gdk_gl_context_clear_current()`.
public protocol GLContextProtocol: ObjectProtocol {
    /// Untyped pointer to the underlying `GdkGLContext` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GdkGLContext` instance.
    var gl_context_ptr: UnsafeMutablePointer<GdkGLContext> { get }
}

/// The `GLContextRef` type acts as a lightweight Swift reference to an underlying `GdkGLContext` instance.
/// It exposes methods that can operate on this data type through `GLContextProtocol` conformance.
/// Use `GLContextRef` only as an `unowned` reference to an existing `GdkGLContext` instance.
///
/// `GdkGLContext` is an object representing the platform-specific
/// OpenGL drawing context.
/// 
/// `GdkGLContexts` are created for a `GdkWindow` using
/// `gdk_window_create_gl_context()`, and the context will match
/// the `GdkVisual` of the window.
/// 
/// A `GdkGLContext` is not tied to any particular normal framebuffer.
/// For instance, it cannot draw to the `GdkWindow` back buffer. The GDK
/// repaint system is in full control of the painting to that. Instead,
/// you can create render buffers or textures and use `gdk_cairo_draw_from_gl()`
/// in the draw function of your widget to draw them. Then GDK will handle
/// the integration of your rendering with that of other widgets.
/// 
/// Support for `GdkGLContext` is platform-specific, context creation
/// can fail, returning `nil` context.
/// 
/// A `GdkGLContext` has to be made "current" in order to start using
/// it, otherwise any OpenGL call will be ignored.
/// 
/// ## Creating a new OpenGL context ##
/// 
/// In order to create a new `GdkGLContext` instance you need a
/// `GdkWindow`, which you typically get during the realize call
/// of a widget.
/// 
/// A `GdkGLContext` is not realized until either `gdk_gl_context_make_current()`,
/// or until it is realized using `gdk_gl_context_realize()`. It is possible to
/// specify details of the GL context like the OpenGL version to be used, or
/// whether the GL context should have extra state validation enabled after
/// calling `gdk_window_create_gl_context()` by calling `gdk_gl_context_realize()`.
/// If the realization fails you have the option to change the settings of the
/// `GdkGLContext` and try again.
/// 
/// ## Using a GdkGLContext ##
/// 
/// You will need to make the `GdkGLContext` the current context
/// before issuing OpenGL calls; the system sends OpenGL commands to
/// whichever context is current. It is possible to have multiple
/// contexts, so you always need to ensure that the one which you
/// want to draw with is the current one before issuing commands:
/// 
/// (C Language Example):
/// ```C
///   gdk_gl_context_make_current (context);
/// ```
/// 
/// You can now perform your drawing using OpenGL commands.
/// 
/// You can check which `GdkGLContext` is the current one by using
/// `gdk_gl_context_get_current()`; you can also unset any `GdkGLContext`
/// that is currently set by calling `gdk_gl_context_clear_current()`.
public struct GLContextRef: GLContextProtocol {
    /// Untyped pointer to the underlying `GdkGLContext` instance.
    /// For type-safe access, use the generated, typed pointer `gl_context_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension GLContextRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GdkGLContext>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `GLContextProtocol`
    init<T: GLContextProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GLContextProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GLContextProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GLContextProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GLContextProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GLContextProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Retrieves the current `GdkGLContext`.
    static func getCurrent() -> GLContextRef! {
        let rv = gdk_gl_context_get_current()
        return rv.map { GLContextRef(cast($0)) }
    }
}

/// The `GLContext` type acts as a reference-counted owner of an underlying `GdkGLContext` instance.
/// It provides the methods that can operate on this data type through `GLContextProtocol` conformance.
/// Use `GLContext` as a strong reference or owner of a `GdkGLContext` instance.
///
/// `GdkGLContext` is an object representing the platform-specific
/// OpenGL drawing context.
/// 
/// `GdkGLContexts` are created for a `GdkWindow` using
/// `gdk_window_create_gl_context()`, and the context will match
/// the `GdkVisual` of the window.
/// 
/// A `GdkGLContext` is not tied to any particular normal framebuffer.
/// For instance, it cannot draw to the `GdkWindow` back buffer. The GDK
/// repaint system is in full control of the painting to that. Instead,
/// you can create render buffers or textures and use `gdk_cairo_draw_from_gl()`
/// in the draw function of your widget to draw them. Then GDK will handle
/// the integration of your rendering with that of other widgets.
/// 
/// Support for `GdkGLContext` is platform-specific, context creation
/// can fail, returning `nil` context.
/// 
/// A `GdkGLContext` has to be made "current" in order to start using
/// it, otherwise any OpenGL call will be ignored.
/// 
/// ## Creating a new OpenGL context ##
/// 
/// In order to create a new `GdkGLContext` instance you need a
/// `GdkWindow`, which you typically get during the realize call
/// of a widget.
/// 
/// A `GdkGLContext` is not realized until either `gdk_gl_context_make_current()`,
/// or until it is realized using `gdk_gl_context_realize()`. It is possible to
/// specify details of the GL context like the OpenGL version to be used, or
/// whether the GL context should have extra state validation enabled after
/// calling `gdk_window_create_gl_context()` by calling `gdk_gl_context_realize()`.
/// If the realization fails you have the option to change the settings of the
/// `GdkGLContext` and try again.
/// 
/// ## Using a GdkGLContext ##
/// 
/// You will need to make the `GdkGLContext` the current context
/// before issuing OpenGL calls; the system sends OpenGL commands to
/// whichever context is current. It is possible to have multiple
/// contexts, so you always need to ensure that the one which you
/// want to draw with is the current one before issuing commands:
/// 
/// (C Language Example):
/// ```C
///   gdk_gl_context_make_current (context);
/// ```
/// 
/// You can now perform your drawing using OpenGL commands.
/// 
/// You can check which `GdkGLContext` is the current one by using
/// `gdk_gl_context_get_current()`; you can also unset any `GdkGLContext`
/// that is currently set by calling `gdk_gl_context_clear_current()`.
open class GLContext: Object, GLContextProtocol {
    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `GLContext` instance.
    public init(_ op: UnsafeMutablePointer<GdkGLContext>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `GLContextProtocol`
    /// Will retain `GdkGLContext`.
    public convenience init<T: GLContextProtocol>(_ other: T) {
        self.init(cast(other.gl_context_ptr))
        g_object_ref(cast(gl_context_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GLContextProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GdkGLContext.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GLContextProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GdkGLContext.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GLContextProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GdkGLContext.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GLContextProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GdkGLContext>(opaquePointer))
    }


    /// Retrieves the current `GdkGLContext`.
    public static func getCurrent() -> GLContext! {
        let rv = gdk_gl_context_get_current()
        return rv.map { GLContext(cast($0)) }
    }

}

public enum GLContextPropertyName: String, PropertyNameProtocol {
    /// The `GdkDisplay` used to create the `GdkGLContext`.
    case display = "display"
    /// The `GdkGLContext` that this context is sharing data with, or `nil`
    case sharedContext = "shared-context"
    /// The `GdkWindow` the gl context is bound to.
    case window = "window"
}

public extension GLContextProtocol {
    /// Bind a `GLContextPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult func bind<Q: PropertyNameProtocol, T: ObjectProtocol>(property source_property: GLContextPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default_, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default_, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(cast(gl_context_ptr)).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
            }
            return rv.map { BindingRef(cast($0)) }
        }

        let rv = _bind(source_property.name, to: target, target_property.name, flags: f, holder: BindingClosureHolder(transform_from, transform_to), transformFrom: {
            let ptr = UnsafeRawPointer($3)
            let holder = Unmanaged<BindingClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            return holder.transform_from(GLibObject.ValueRef(raw: $1), GLibObject.ValueRef(raw: $2)) ? 1 : 0
        }) {
            let ptr = UnsafeRawPointer($3)
            let holder = Unmanaged<BindingClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            return holder.transform_to(GLibObject.ValueRef(raw: $1), GLibObject.ValueRef(raw: $2)) ? 1 : 0
        }
        return rv
    }
}

public enum GLContextSignalName: String, SignalNameProtocol {
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to `g_object_set_property()` results
    /// in `notify` being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call `g_object_notify()` or `g_object_notify_by_pspec()`,
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// `g_signal_connect()` call, like this:
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    case notify = "notify"
    /// The `GdkDisplay` used to create the `GdkGLContext`.
    case notifyDisplay = "notify::display"
    /// The `GdkGLContext` that this context is sharing data with, or `nil`
    case notifySharedContext = "notify::shared-context"
    /// The `GdkWindow` the gl context is bound to.
    case notifyWindow = "notify::window"
}

public extension GLContextProtocol {
    /// Connect a `GLContextSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: GLContextSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(gl_context_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
                let _ = $1
            }, connectFlags: flags)
            return rv
        }
        let rv = _connect(signal: kind.name, flags: f, data: ClosureHolder(handler)) {
            let ptr = UnsafeRawPointer($1)
            let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            holder.call(())
        }
        return rv
    }
}

public extension GLContextProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GdkGLContext` instance.
    var gl_context_ptr: UnsafeMutablePointer<GdkGLContext> { return ptr.assumingMemoryBound(to: GdkGLContext.self) }

    /// Retrieves the value set using `gdk_gl_context_set_debug_enabled()`.
    func getDebugEnabled() -> Bool {
        let rv = gdk_gl_context_get_debug_enabled(cast(gl_context_ptr))
        return Bool(rv != 0)
    }

    /// Retrieves the `GdkDisplay` the `context` is created for
    func getDisplay() -> UnsafeMutablePointer<GdkDisplay>! {
        let rv = gdk_gl_context_get_display(cast(gl_context_ptr))
        return cast(rv)
    }

    /// Retrieves the value set using `gdk_gl_context_set_forward_compatible()`.
    func getForwardCompatible() -> Bool {
        let rv = gdk_gl_context_get_forward_compatible(cast(gl_context_ptr))
        return Bool(rv != 0)
    }

    /// Retrieves the major and minor version requested by calling
    /// `gdk_gl_context_set_required_version()`.
    func getRequiredVersion(major: UnsafeMutablePointer<CInt>, minor: UnsafeMutablePointer<CInt>) {
        gdk_gl_context_get_required_version(cast(gl_context_ptr), cast(major), cast(minor))
    
    }

    /// Retrieves the `GdkGLContext` that this `context` share data with.
    func getSharedContext() -> UnsafeMutablePointer<GdkGLContext>! {
        let rv = gdk_gl_context_get_shared_context(cast(gl_context_ptr))
        return cast(rv)
    }

    /// Checks whether the `context` is using an OpenGL or OpenGL ES profile.
    func getUseEs() -> Bool {
        let rv = gdk_gl_context_get_use_es(cast(gl_context_ptr))
        return Bool(rv != 0)
    }

    /// Retrieves the OpenGL version of the `context`.
    /// 
    /// The `context` must be realized prior to calling this function.
    func getVersion(major: UnsafeMutablePointer<CInt>, minor: UnsafeMutablePointer<CInt>) {
        gdk_gl_context_get_version(cast(gl_context_ptr), cast(major), cast(minor))
    
    }

    /// Retrieves the `GdkWindow` used by the `context`.
    func getWindow() -> UnsafeMutablePointer<GdkWindow>! {
        let rv = gdk_gl_context_get_window(cast(gl_context_ptr))
        return cast(rv)
    }

    /// Makes the `context` the current one.
    func makeCurrent() {
        gdk_gl_context_make_current(cast(gl_context_ptr))
    
    }

    /// Realizes the given `GdkGLContext`.
    /// 
    /// It is safe to call this function on a realized `GdkGLContext`.
    func realize() throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = gdk_gl_context_realize(cast(gl_context_ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return Bool(rv != 0)
    }

    /// Sets whether the `GdkGLContext` should perform extra validations and
    /// run time checking. This is useful during development, but has
    /// additional overhead.
    /// 
    /// The `GdkGLContext` must not be realized or made current prior to
    /// calling this function.
    func setDebug(enabled: Bool) {
        gdk_gl_context_set_debug_enabled(cast(gl_context_ptr), gboolean(enabled ? 1 : 0))
    
    }

    /// Sets whether the `GdkGLContext` should be forward compatible.
    /// 
    /// Forward compatibile contexts must not support OpenGL functionality that
    /// has been marked as deprecated in the requested version; non-forward
    /// compatible contexts, on the other hand, must support both deprecated and
    /// non deprecated functionality.
    /// 
    /// The `GdkGLContext` must not be realized or made current prior to calling
    /// this function.
    func setForward(compatible: Bool) {
        gdk_gl_context_set_forward_compatible(cast(gl_context_ptr), gboolean(compatible ? 1 : 0))
    
    }

    /// Sets the major and minor version of OpenGL to request.
    /// 
    /// Setting `major` and `minor` to zero will use the default values.
    /// 
    /// The `GdkGLContext` must not be realized or made current prior to calling
    /// this function.
    func setRequiredVersion(major: CInt, minor: CInt) {
        gdk_gl_context_set_required_version(cast(gl_context_ptr), major, minor)
    
    }

    /// Requests that GDK create a OpenGL ES context instead of an OpenGL one,
    /// if the platform and windowing system allows it.
    /// 
    /// The `context` must not have been realized.
    /// 
    /// By default, GDK will attempt to automatically detect whether the
    /// underlying GL implementation is OpenGL or OpenGL ES once the `context`
    /// is realized.
    /// 
    /// You should check the return value of `gdk_gl_context_get_use_es()` after
    /// calling `gdk_gl_context_realize()` to decide whether to use the OpenGL or
    /// OpenGL ES API, extensions, or shaders.
    func set(useEs use_es: CInt) {
        gdk_gl_context_set_use_es(cast(gl_context_ptr), use_es)
    
    }
    /// Retrieves the value set using `gdk_gl_context_set_debug_enabled()`.
    var debugEnabled: Bool {
        /// Retrieves the value set using `gdk_gl_context_set_debug_enabled()`.
        get {
            let rv = gdk_gl_context_get_debug_enabled(cast(gl_context_ptr))
            return Bool(rv != 0)
        }
        /// Sets whether the `GdkGLContext` should perform extra validations and
        /// run time checking. This is useful during development, but has
        /// additional overhead.
        /// 
        /// The `GdkGLContext` must not be realized or made current prior to
        /// calling this function.
        nonmutating set {
            gdk_gl_context_set_debug_enabled(cast(gl_context_ptr), gboolean(newValue ? 1 : 0))
        }
    }

    /// The `GdkDisplay` used to create the `GdkGLContext`.
    var display: UnsafeMutablePointer<GdkDisplay>! {
        /// Retrieves the `GdkDisplay` the `context` is created for
        get {
            let rv = gdk_gl_context_get_display(cast(gl_context_ptr))
            return cast(rv)
        }
    }

    /// Retrieves the value set using `gdk_gl_context_set_forward_compatible()`.
    var forwardCompatible: Bool {
        /// Retrieves the value set using `gdk_gl_context_set_forward_compatible()`.
        get {
            let rv = gdk_gl_context_get_forward_compatible(cast(gl_context_ptr))
            return Bool(rv != 0)
        }
        /// Sets whether the `GdkGLContext` should be forward compatible.
        /// 
        /// Forward compatibile contexts must not support OpenGL functionality that
        /// has been marked as deprecated in the requested version; non-forward
        /// compatible contexts, on the other hand, must support both deprecated and
        /// non deprecated functionality.
        /// 
        /// The `GdkGLContext` must not be realized or made current prior to calling
        /// this function.
        nonmutating set {
            gdk_gl_context_set_forward_compatible(cast(gl_context_ptr), gboolean(newValue ? 1 : 0))
        }
    }

    /// Whether the `GdkGLContext` is in legacy mode or not.
    /// 
    /// The `GdkGLContext` must be realized before calling this function.
    /// 
    /// When realizing a GL context, GDK will try to use the OpenGL 3.2 core
    /// profile; this profile removes all the OpenGL API that was deprecated
    /// prior to the 3.2 version of the specification. If the realization is
    /// successful, this function will return `false`.
    /// 
    /// If the underlying OpenGL implementation does not support core profiles,
    /// GDK will fall back to a pre-3.2 compatibility profile, and this function
    /// will return `true`.
    /// 
    /// You can use the value returned by this function to decide which kind
    /// of OpenGL API to use, or whether to do extension discovery, or what
    /// kind of shader programs to load.
    var isLegacy: Bool {
        /// Whether the `GdkGLContext` is in legacy mode or not.
        /// 
        /// The `GdkGLContext` must be realized before calling this function.
        /// 
        /// When realizing a GL context, GDK will try to use the OpenGL 3.2 core
        /// profile; this profile removes all the OpenGL API that was deprecated
        /// prior to the 3.2 version of the specification. If the realization is
        /// successful, this function will return `false`.
        /// 
        /// If the underlying OpenGL implementation does not support core profiles,
        /// GDK will fall back to a pre-3.2 compatibility profile, and this function
        /// will return `true`.
        /// 
        /// You can use the value returned by this function to decide which kind
        /// of OpenGL API to use, or whether to do extension discovery, or what
        /// kind of shader programs to load.
        get {
            let rv = gdk_gl_context_is_legacy(cast(gl_context_ptr))
            return Bool(rv != 0)
        }
    }

    /// Retrieves the `GdkGLContext` that this `context` share data with.
    var sharedContext: UnsafeMutablePointer<GdkGLContext>! {
        /// Retrieves the `GdkGLContext` that this `context` share data with.
        get {
            let rv = gdk_gl_context_get_shared_context(cast(gl_context_ptr))
            return cast(rv)
        }
    }

    /// Checks whether the `context` is using an OpenGL or OpenGL ES profile.
    var useEs: Bool {
        /// Checks whether the `context` is using an OpenGL or OpenGL ES profile.
        get {
            let rv = gdk_gl_context_get_use_es(cast(gl_context_ptr))
            return Bool(rv != 0)
        }
        /// Requests that GDK create a OpenGL ES context instead of an OpenGL one,
        /// if the platform and windowing system allows it.
        /// 
        /// The `context` must not have been realized.
        /// 
        /// By default, GDK will attempt to automatically detect whether the
        /// underlying GL implementation is OpenGL or OpenGL ES once the `context`
        /// is realized.
        /// 
        /// You should check the return value of `gdk_gl_context_get_use_es()` after
        /// calling `gdk_gl_context_realize()` to decide whether to use the OpenGL or
        /// OpenGL ES API, extensions, or shaders.
        nonmutating set {
            gdk_gl_context_set_use_es(cast(gl_context_ptr), newValue ? 1 : 0)
        }
    }

    /// The `GdkWindow` the gl context is bound to.
    var window: UnsafeMutablePointer<GdkWindow>! {
        /// Retrieves the `GdkWindow` used by the `context`.
        get {
            let rv = gdk_gl_context_get_window(cast(gl_context_ptr))
            return cast(rv)
        }
    }
}



// MARK: - Keymap Class

/// The `KeymapProtocol` protocol exposes the methods and properties of an underlying `GdkKeymap` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Keymap`.
/// Alternatively, use `KeymapRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A `GdkKeymap` defines the translation from keyboard state
/// (including a hardware key, a modifier mask, and active keyboard group)
/// to a keyval. This translation has two phases. The first phase is
/// to determine the effective keyboard group and level for the keyboard
/// state; the second phase is to look up the keycode/group/level triplet
/// in the keymap and see what keyval it corresponds to.
public protocol KeymapProtocol: ObjectProtocol {
    /// Untyped pointer to the underlying `GdkKeymap` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GdkKeymap` instance.
    var keymap_ptr: UnsafeMutablePointer<GdkKeymap> { get }
}

/// The `KeymapRef` type acts as a lightweight Swift reference to an underlying `GdkKeymap` instance.
/// It exposes methods that can operate on this data type through `KeymapProtocol` conformance.
/// Use `KeymapRef` only as an `unowned` reference to an existing `GdkKeymap` instance.
///
/// A `GdkKeymap` defines the translation from keyboard state
/// (including a hardware key, a modifier mask, and active keyboard group)
/// to a keyval. This translation has two phases. The first phase is
/// to determine the effective keyboard group and level for the keyboard
/// state; the second phase is to look up the keycode/group/level triplet
/// in the keymap and see what keyval it corresponds to.
public struct KeymapRef: KeymapProtocol {
    /// Untyped pointer to the underlying `GdkKeymap` instance.
    /// For type-safe access, use the generated, typed pointer `keymap_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension KeymapRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GdkKeymap>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `KeymapProtocol`
    init<T: KeymapProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `KeymapProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `KeymapProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `KeymapProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `KeymapProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `KeymapProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Returns the `GdkKeymap` attached to the default display.
    ///
    /// **get_default is deprecated:**
    /// Use gdk_keymap_get_for_display() instead
    @available(*, deprecated) static func getDefault() -> KeymapRef! {
        let rv = gdk_keymap_get_default()
        return rv.map { KeymapRef(cast($0)) }
    }

    /// Returns the `GdkKeymap` attached to `display`.
    static func getFor(display: DisplayProtocol) -> KeymapRef! {
        let rv = gdk_keymap_get_for_display(cast(display.ptr))
        return rv.map { KeymapRef(cast($0)) }
    }
}

/// The `Keymap` type acts as a reference-counted owner of an underlying `GdkKeymap` instance.
/// It provides the methods that can operate on this data type through `KeymapProtocol` conformance.
/// Use `Keymap` as a strong reference or owner of a `GdkKeymap` instance.
///
/// A `GdkKeymap` defines the translation from keyboard state
/// (including a hardware key, a modifier mask, and active keyboard group)
/// to a keyval. This translation has two phases. The first phase is
/// to determine the effective keyboard group and level for the keyboard
/// state; the second phase is to look up the keycode/group/level triplet
/// in the keymap and see what keyval it corresponds to.
open class Keymap: Object, KeymapProtocol {
    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `Keymap` instance.
    public init(_ op: UnsafeMutablePointer<GdkKeymap>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `KeymapProtocol`
    /// Will retain `GdkKeymap`.
    public convenience init<T: KeymapProtocol>(_ other: T) {
        self.init(cast(other.keymap_ptr))
        g_object_ref(cast(keymap_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `KeymapProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GdkKeymap.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `KeymapProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GdkKeymap.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `KeymapProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GdkKeymap.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `KeymapProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GdkKeymap>(opaquePointer))
    }


    /// Returns the `GdkKeymap` attached to the default display.
    ///
    /// **get_default is deprecated:**
    /// Use gdk_keymap_get_for_display() instead
    @available(*, deprecated) public static func getDefault() -> Keymap! {
        let rv = gdk_keymap_get_default()
        return rv.map { Keymap(cast($0)) }
    }

    /// Returns the `GdkKeymap` attached to `display`.
    public static func getFor(display: DisplayProtocol) -> Keymap! {
        let rv = gdk_keymap_get_for_display(cast(display.ptr))
        return rv.map { Keymap(cast($0)) }
    }

}

// MARK: - no Keymap properties

public enum KeymapSignalName: String, SignalNameProtocol {
    /// The `direction`-changed signal gets emitted when the direction of
    /// the keymap changes.
    case directionChanged = "direction-changed"
    /// The `keys`-changed signal is emitted when the mapping represented by
    /// `keymap` changes.
    case keysChanged = "keys-changed"
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to `g_object_set_property()` results
    /// in `notify` being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call `g_object_notify()` or `g_object_notify_by_pspec()`,
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// `g_signal_connect()` call, like this:
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    case notify = "notify"
    /// The `state`-changed signal is emitted when the state of the
    /// keyboard changes, e.g when Caps Lock is turned on or off.
    /// See `gdk_keymap_get_caps_lock_state()`.
    case stateChanged = "state-changed"

}

public extension KeymapProtocol {
    /// Connect a `KeymapSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: KeymapSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(keymap_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
                let _ = $1
            }, connectFlags: flags)
            return rv
        }
        let rv = _connect(signal: kind.name, flags: f, data: ClosureHolder(handler)) {
            let ptr = UnsafeRawPointer($1)
            let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            holder.call(())
        }
        return rv
    }
}

public extension KeymapProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GdkKeymap` instance.
    var keymap_ptr: UnsafeMutablePointer<GdkKeymap> { return ptr.assumingMemoryBound(to: GdkKeymap.self) }

    /// Maps the non-virtual modifiers (i.e Mod2, Mod3, ...) which are set
    /// in `state` to the virtual modifiers (i.e. Super, Hyper and Meta) and
    /// set the corresponding bits in `state`.
    /// 
    /// GDK already does this before delivering key events, but for
    /// compatibility reasons, it only sets the first virtual modifier
    /// it finds, whereas this function sets all matching virtual modifiers.
    /// 
    /// This function is useful when matching key events against
    /// accelerators.
    func addVirtualModifiers(state: UnsafeMutablePointer<GdkModifierType>) {
        gdk_keymap_add_virtual_modifiers(cast(keymap_ptr), cast(state))
    
    }

    /// Returns whether the Caps Lock modifer is locked.
    func getCapsLockState() -> Bool {
        let rv = gdk_keymap_get_caps_lock_state(cast(keymap_ptr))
        return Bool(rv != 0)
    }

    /// Returns the direction of effective layout of the keymap.
    func getDirection() -> PangoDirection {
        let rv = gdk_keymap_get_direction(cast(keymap_ptr))
        return rv
    }

    /// Returns the keyvals bound to `hardware_keycode`.
    /// The Nth `GdkKeymapKey` in `keys` is bound to the Nth
    /// keyval in `keyvals`. Free the returned arrays with `g_free()`.
    /// When a keycode is pressed by the user, the keyval from
    /// this list of entries is selected by considering the effective
    /// keyboard group and level. See `gdk_keymap_translate_keyboard_state()`.
    func getEntriesForKeycode(hardwareKeycode hardware_keycode: CUnsignedInt, keys: UnsafeMutablePointer<UnsafeMutablePointer<GdkKeymapKey>>, keyvals: UnsafeMutablePointer<UnsafeMutablePointer<CUnsignedInt>>, nEntries n_entries: UnsafeMutablePointer<CInt>) -> Bool {
        let rv = gdk_keymap_get_entries_for_keycode(cast(keymap_ptr), guint(hardware_keycode), cast(keys), cast(keyvals), cast(n_entries))
        return Bool(rv != 0)
    }

    /// Obtains a list of keycode/group/level combinations that will
    /// generate `keyval`. Groups and levels are two kinds of keyboard mode;
    /// in general, the level determines whether the top or bottom symbol
    /// on a key is used, and the group determines whether the left or
    /// right symbol is used. On US keyboards, the shift key changes the
    /// keyboard level, and there are no groups. A group switch key might
    /// convert a keyboard between Hebrew to English modes, for example.
    /// `GdkEventKey` contains a `group` field that indicates the active
    /// keyboard group. The level is computed from the modifier mask.
    /// The returned array should be freed
    /// with `g_free()`.
    func getEntriesFor(keyval: CUnsignedInt, keys: UnsafeMutablePointer<UnsafeMutablePointer<GdkKeymapKey>>, nKeys n_keys: UnsafeMutablePointer<CInt>) -> Bool {
        let rv = gdk_keymap_get_entries_for_keyval(cast(keymap_ptr), guint(keyval), cast(keys), cast(n_keys))
        return Bool(rv != 0)
    }

    /// Returns the modifier mask the `keymap`’s windowing system backend
    /// uses for a particular purpose.
    /// 
    /// Note that this function always returns real hardware modifiers, not
    /// virtual ones (e.g. it will return `GDK_MOD1_MASK` rather than
    /// `GDK_META_MASK` if the backend maps MOD1 to META), so there are use
    /// cases where the return value of this function has to be transformed
    /// by `gdk_keymap_add_virtual_modifiers()` in order to contain the
    /// expected result.
    func getModifierMask(intent: ModifierIntent) -> GdkModifierType {
        let rv = gdk_keymap_get_modifier_mask(cast(keymap_ptr), intent)
        return rv
    }

    /// Returns the current modifier state.
    func getModifierState() -> CUnsignedInt {
        let rv = gdk_keymap_get_modifier_state(cast(keymap_ptr))
        return CUnsignedInt(rv)
    }

    /// Returns whether the Num Lock modifer is locked.
    func getNumLockState() -> Bool {
        let rv = gdk_keymap_get_num_lock_state(cast(keymap_ptr))
        return Bool(rv != 0)
    }

    /// Returns whether the Scroll Lock modifer is locked.
    func getScrollLockState() -> Bool {
        let rv = gdk_keymap_get_scroll_lock_state(cast(keymap_ptr))
        return Bool(rv != 0)
    }

    /// Determines if keyboard layouts for both right-to-left and left-to-right
    /// languages are in use.
    func haveBidiLayouts() -> Bool {
        let rv = gdk_keymap_have_bidi_layouts(cast(keymap_ptr))
        return Bool(rv != 0)
    }

    /// Looks up the keyval mapped to a keycode/group/level triplet.
    /// If no keyval is bound to `key`, returns 0. For normal user input,
    /// you want to use `gdk_keymap_translate_keyboard_state()` instead of
    /// this function, since the effective group/level may not be
    /// the same as the current keyboard state.
    func lookup(key: KeymapKeyProtocol) -> CUnsignedInt {
        let rv = gdk_keymap_lookup_key(cast(keymap_ptr), cast(key.ptr))
        return CUnsignedInt(rv)
    }

    /// Maps the virtual modifiers (i.e. Super, Hyper and Meta) which
    /// are set in `state` to their non-virtual counterparts (i.e. Mod2,
    /// Mod3,...) and set the corresponding bits in `state`.
    /// 
    /// This function is useful when matching key events against
    /// accelerators.
    func mapVirtualModifiers(state: UnsafeMutablePointer<GdkModifierType>) -> Bool {
        let rv = gdk_keymap_map_virtual_modifiers(cast(keymap_ptr), cast(state))
        return Bool(rv != 0)
    }

    /// Translates the contents of a `GdkEventKey` into a keyval, effective
    /// group, and level. Modifiers that affected the translation and
    /// are thus unavailable for application use are returned in
    /// `consumed_modifiers`.
    /// See [Groups](#key-group-explanation) for an explanation of
    /// groups and levels. The `effective_group` is the group that was
    /// actually used for the translation; some keys such as Enter are not
    /// affected by the active keyboard group. The `level` is derived from
    /// `state`. For convenience, `GdkEventKey` already contains the translated
    /// keyval, so this function isn’t as useful as you might think.
    /// 
    /// `consumed_modifiers` gives modifiers that should be masked outfrom `state`
    /// when comparing this key press to a hot key. For instance, on a US keyboard,
    /// the `plus` symbol is shifted, so when comparing a key press to a
    /// `<Control>plus` accelerator `<Shift>` should be masked out.
    /// 
    /// (C Language Example):
    /// ```C
    /// // We want to ignore irrelevant modifiers like ScrollLock
    /// #define ALL_ACCELS_MASK (GDK_CONTROL_MASK | GDK_SHIFT_MASK | GDK_MOD1_MASK)
    /// gdk_keymap_translate_keyboard_state (keymap, event->hardware_keycode,
    ///                                      event->state, event->group,
    ///                                      &keyval, NULL, NULL, &consumed);
    /// if (keyval == GDK_PLUS &&
    ///     (event->state & ~consumed & ALL_ACCELS_MASK) == GDK_CONTROL_MASK)
    ///   // Control was pressed
    /// ```
    /// 
    /// An older interpretation `consumed_modifiers` was that it contained
    /// all modifiers that might affect the translation of the key;
    /// this allowed accelerators to be stored with irrelevant consumed
    /// modifiers, by doing:
    /// (C Language Example):
    /// ```C
    /// // XXX Don’t do this XXX
    /// if (keyval == accel_keyval &&
    ///     (event->state & ~consumed & ALL_ACCELS_MASK) == (accel_mods & ~consumed))
    ///   // Accelerator was pressed
    /// ```
    /// 
    /// However, this did not work if multi-modifier combinations were
    /// used in the keymap, since, for instance, `<Control>` would be
    /// masked out even if only `<Control><Alt>` was used in the keymap.
    /// To support this usage as well as well as possible, all single
    /// modifier combinations that could affect the key for any combination
    /// of modifiers will be returned in `consumed_modifiers`; multi-modifier
    /// combinations are returned only when actually found in `state`. When
    /// you store accelerators, you should always store them with consumed
    /// modifiers removed. Store `<Control>plus`, not `<Control><Shift>plus`,
    func translateKeyboardState(hardwareKeycode hardware_keycode: CUnsignedInt, state: ModifierType, group: CInt, keyval: UnsafeMutablePointer<CUnsignedInt>, effectiveGroup effective_group: UnsafeMutablePointer<CInt>, level: UnsafeMutablePointer<CInt>, consumedModifiers consumed_modifiers: UnsafeMutablePointer<GdkModifierType>) -> Bool {
        let rv = gdk_keymap_translate_keyboard_state(cast(keymap_ptr), guint(hardware_keycode), state, gint(group), cast(keyval), cast(effective_group), cast(level), cast(consumed_modifiers))
        return Bool(rv != 0)
    }
    /// Returns whether the Caps Lock modifer is locked.
    var capsLockState: Bool {
        /// Returns whether the Caps Lock modifer is locked.
        get {
            let rv = gdk_keymap_get_caps_lock_state(cast(keymap_ptr))
            return Bool(rv != 0)
        }
    }

    /// Returns the direction of effective layout of the keymap.
    var direction: PangoDirection {
        /// Returns the direction of effective layout of the keymap.
        get {
            let rv = gdk_keymap_get_direction(cast(keymap_ptr))
            return rv
        }
    }

    /// Returns the current modifier state.
    var modifierState: CUnsignedInt {
        /// Returns the current modifier state.
        get {
            let rv = gdk_keymap_get_modifier_state(cast(keymap_ptr))
            return CUnsignedInt(rv)
        }
    }

    /// Returns whether the Num Lock modifer is locked.
    var numLockState: Bool {
        /// Returns whether the Num Lock modifer is locked.
        get {
            let rv = gdk_keymap_get_num_lock_state(cast(keymap_ptr))
            return Bool(rv != 0)
        }
    }

    /// Returns whether the Scroll Lock modifer is locked.
    var scrollLockState: Bool {
        /// Returns whether the Scroll Lock modifer is locked.
        get {
            let rv = gdk_keymap_get_scroll_lock_state(cast(keymap_ptr))
            return Bool(rv != 0)
        }
    }
}



