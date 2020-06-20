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

// MARK: - Atom Record

/// The `AtomProtocol` protocol exposes the methods and properties of an underlying `GdkAtom` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Atom`.
/// Alternatively, use `AtomRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// An opaque type representing a string as an index into a table
/// of strings on the X server.
public protocol AtomProtocol {
        /// Untyped pointer to the underlying `GdkAtom` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GdkAtom` instance.
    var _ptr: UnsafeMutablePointer<GdkAtom> { get }
}

/// The `AtomRef` type acts as a lightweight Swift reference to an underlying `GdkAtom` instance.
/// It exposes methods that can operate on this data type through `AtomProtocol` conformance.
/// Use `AtomRef` only as an `unowned` reference to an existing `GdkAtom` instance.
///
/// An opaque type representing a string as an index into a table
/// of strings on the X server.
public struct AtomRef: AtomProtocol {
        /// Untyped pointer to the underlying `GdkAtom` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension AtomRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GdkAtom>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `AtomProtocol`
    init<T: AtomProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AtomProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AtomProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AtomProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AtomProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AtomProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Finds or creates an atom corresponding to a given string.
    static func intern(atomName atom_name: UnsafePointer<gchar>, onlyIfExists only_if_exists: Bool) -> AtomRef! {
        let rv = gdk_atom_intern(atom_name, gboolean(only_if_exists ? 1 : 0))
        return rv.map { AtomRef(cast($0)) }
    }

    /// Finds or creates an atom corresponding to a given string.
    /// 
    /// Note that this function is identical to `gdk_atom_intern()` except
    /// that if a new `GdkAtom` is created the string itself is used rather
    /// than a copy. This saves memory, but can only be used if the string
    /// will always exist. It can be used with statically
    /// allocated strings in the main program, but not with statically
    /// allocated memory in dynamically loaded modules, if you expect to
    /// ever unload the module again (e.g. do not use this function in
    /// GTK+ theme engines).
    static func internStaticString(atomName atom_name: UnsafePointer<gchar>) -> AtomRef! {
        let rv = gdk_atom_intern_static_string(atom_name)
        return rv.map { AtomRef(cast($0)) }
    }
}

/// The `Atom` type acts as an owner of an underlying `GdkAtom` instance.
/// It provides the methods that can operate on this data type through `AtomProtocol` conformance.
/// Use `Atom` as a strong reference or owner of a `GdkAtom` instance.
///
/// An opaque type representing a string as an index into a table
/// of strings on the X server.
open class Atom: AtomProtocol {
        /// Untyped pointer to the underlying `GdkAtom` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Atom` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GdkAtom>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GdkAtom` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `Atom` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GdkAtom>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GdkAtom, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `AtomProtocol`
    /// `GdkAtom` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `AtomProtocol`
    public init<T: AtomProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for GdkAtom, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for `GdkAtom`.
    deinit {
        // no reference counting for GdkAtom, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AtomProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AtomProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GdkAtom, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AtomProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AtomProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GdkAtom, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AtomProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AtomProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GdkAtom, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AtomProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AtomProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GdkAtom, cannot ref(cast(_ptr))
    }


    /// Finds or creates an atom corresponding to a given string.
    public static func intern(atomName atom_name: UnsafePointer<gchar>, onlyIfExists only_if_exists: Bool) -> Atom! {
        let rv = gdk_atom_intern(atom_name, gboolean(only_if_exists ? 1 : 0))
        return rv.map { Atom(cast($0)) }
    }

    /// Finds or creates an atom corresponding to a given string.
    /// 
    /// Note that this function is identical to `gdk_atom_intern()` except
    /// that if a new `GdkAtom` is created the string itself is used rather
    /// than a copy. This saves memory, but can only be used if the string
    /// will always exist. It can be used with statically
    /// allocated strings in the main program, but not with statically
    /// allocated memory in dynamically loaded modules, if you expect to
    /// ever unload the module again (e.g. do not use this function in
    /// GTK+ theme engines).
    public static func internStaticString(atomName atom_name: UnsafePointer<gchar>) -> Atom! {
        let rv = gdk_atom_intern_static_string(atom_name)
        return rv.map { Atom(cast($0)) }
    }

}

// MARK: no Atom properties

// MARK: no Atom signals


// MARK: Atom Record: AtomProtocol extension (methods and fields)
public extension AtomProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GdkAtom` instance.
    var _ptr: UnsafeMutablePointer<GdkAtom> { return ptr.assumingMemoryBound(to: GdkAtom.self) }

    /// Determines the string corresponding to an atom.
    func name() -> String! {
        let rv: String! = cast(gdk_atom_name(cast(_ptr)))
        return cast(rv)
    }

    /// Changes the contents of a property on a window.
    func propertyChange(window: WindowProtocol, type: Atom, format: CInt, mode: PropMode, data: UnsafePointer<guchar>, nelements: CInt) {
        gdk_property_change(cast(window.ptr), cast(_ptr), cast(type.ptr), gint(format), mode, cast(data), gint(nelements))
    
    }

    /// Deletes a property from a window.
    func propertyDelete(window: WindowProtocol) {
        gdk_property_delete(cast(window.ptr), cast(_ptr))
    
    }

    /// Retrieves a portion of the contents of a property. If the
    /// property does not exist, then the function returns `false`,
    /// and `GDK_NONE` will be stored in `actual_property_type`.
    /// 
    /// The `XGetWindowProperty()` function that `gdk_property_get()`
    /// uses has a very confusing and complicated set of semantics.
    /// Unfortunately, `gdk_property_get()` makes the situation
    /// worse instead of better (the semantics should be considered
    /// undefined), and also prints warnings to stderr in cases where it
    /// should return a useful error to the program. You are advised to use
    /// `XGetWindowProperty()` directly until a replacement function for
    /// `gdk_property_get()` is provided.
    func propertyGet(window: WindowProtocol, type: Atom, offset: CUnsignedLong, length: CUnsignedLong, pdelete: CInt, actualPropertyType actual_property_type: AtomProtocol, actualFormat actual_format: UnsafeMutablePointer<CInt>, actualLength actual_length: UnsafeMutablePointer<CInt>, data: UnsafeMutablePointer<UnsafeMutablePointer<guchar>>) -> Bool {
        let rv = gdk_property_get(cast(window.ptr), cast(_ptr), cast(type.ptr), gulong(offset), gulong(length), gint(pdelete), cast(actual_property_type.ptr), cast(actual_format), cast(actual_length), cast(data))
        return Bool(rv != 0)
    }

    /// Retrieves the contents of a selection in a given
    /// form.
    func selectionConvert(requestor: WindowProtocol, target: Atom, time_: UInt32) {
        gdk_selection_convert(cast(requestor.ptr), cast(_ptr), cast(target.ptr), guint32(time_))
    
    }

    /// Determines the owner of the given selection.
    func selectionOwnerGet() -> UnsafeMutablePointer<GdkWindow>! {
        let rv: UnsafeMutablePointer<GdkWindow>! = cast(gdk_selection_owner_get(cast(_ptr)))
        return cast(rv)
    }

    /// Determine the owner of the given selection.
    /// 
    /// Note that the return value may be owned by a different
    /// process if a foreign window was previously created for that
    /// window, but a new foreign window will never be created by this call.
    func selectionOwnerGetFor(display: DisplayProtocol) -> UnsafeMutablePointer<GdkWindow>! {
        let rv: UnsafeMutablePointer<GdkWindow>! = cast(gdk_selection_owner_get_for_display(cast(display.ptr), cast(_ptr)))
        return cast(rv)
    }

    /// Sets the owner of the given selection.
    func selectionOwnerSet(owner: WindowProtocol, time_: UInt32, sendEvent send_event: Bool) -> Bool {
        let rv = gdk_selection_owner_set(cast(owner.ptr), cast(_ptr), guint32(time_), gboolean(send_event ? 1 : 0))
        return Bool(rv != 0)
    }

    /// Sets the `GdkWindow` `owner` as the current owner of the selection `selection`.
    func selectionOwnerSetFor(display: DisplayProtocol, owner: WindowProtocol, time_: UInt32, sendEvent send_event: Bool) -> Bool {
        let rv = gdk_selection_owner_set_for_display(cast(display.ptr), cast(owner.ptr), cast(_ptr), guint32(time_), gboolean(send_event ? 1 : 0))
        return Bool(rv != 0)
    }

    /// Retrieves selection data that was stored by the selection
    /// data in response to a call to `gdk_selection_convert()`. This function
    /// will not be used by applications, who should use the `GtkClipboard`
    /// API instead.
    func selectionPropertyGet(requestor: WindowProtocol, data: UnsafeMutablePointer<UnsafeMutablePointer<guchar>>, propFormat prop_format: UnsafeMutablePointer<CInt>) -> Int {
        let rv: Int = cast(gdk_selection_property_get(cast(requestor.ptr), cast(data), cast(_ptr), cast(prop_format)))
        return Int(rv)
    }

    /// Sends a response to SelectionRequest event.
    func selectionSendNotify(requestor: WindowProtocol, target: Atom, property: Atom, time_: UInt32) {
        gdk_selection_send_notify(cast(requestor.ptr), cast(_ptr), cast(target.ptr), cast(property.ptr), guint32(time_))
    
    }

    /// Send a response to SelectionRequest event.
    func selectionSendNotifyFor(display: DisplayProtocol, requestor: WindowProtocol, target: Atom, property: Atom, time_: UInt32) {
        gdk_selection_send_notify_for_display(cast(display.ptr), cast(requestor.ptr), cast(_ptr), cast(target.ptr), cast(property.ptr), guint32(time_))
    
    }

    /// Converts a text property in the given encoding to
    /// a list of UTF-8 strings.
    func textPropertyToUtf8ListFor(display: DisplayProtocol, format: CInt, text: UnsafePointer<guchar>, length: CInt, list: UnsafeMutablePointer<UnsafeMutablePointer<UnsafeMutablePointer<gchar>>>) -> Int {
        let rv: Int = cast(gdk_text_property_to_utf8_list_for_display(cast(display.ptr), cast(_ptr), gint(format), cast(text), gint(length), cast(list)))
        return Int(rv)
    }


}



// MARK: - Color Record

/// The `ColorProtocol` protocol exposes the methods and properties of an underlying `GdkColor` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Color`.
/// Alternatively, use `ColorRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A `GdkColor` is used to describe a color,
/// similar to the XColor struct used in the X11 drawing API.
public protocol ColorProtocol {
        /// Untyped pointer to the underlying `GdkColor` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GdkColor` instance.
    var color_ptr: UnsafeMutablePointer<GdkColor> { get }
}

/// The `ColorRef` type acts as a lightweight Swift reference to an underlying `GdkColor` instance.
/// It exposes methods that can operate on this data type through `ColorProtocol` conformance.
/// Use `ColorRef` only as an `unowned` reference to an existing `GdkColor` instance.
///
/// A `GdkColor` is used to describe a color,
/// similar to the XColor struct used in the X11 drawing API.
public struct ColorRef: ColorProtocol {
        /// Untyped pointer to the underlying `GdkColor` instance.
    /// For type-safe access, use the generated, typed pointer `color_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ColorRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GdkColor>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ColorProtocol`
    init<T: ColorProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `Color` type acts as an owner of an underlying `GdkColor` instance.
/// It provides the methods that can operate on this data type through `ColorProtocol` conformance.
/// Use `Color` as a strong reference or owner of a `GdkColor` instance.
///
/// A `GdkColor` is used to describe a color,
/// similar to the XColor struct used in the X11 drawing API.
open class Color: ColorProtocol {
        /// Untyped pointer to the underlying `GdkColor` instance.
    /// For type-safe access, use the generated, typed pointer `color_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Color` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GdkColor>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GdkColor` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `Color` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GdkColor>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GdkColor, cannot ref(cast(color_ptr))
    }

    /// Reference intialiser for a related type that implements `ColorProtocol`
    /// `GdkColor` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `ColorProtocol`
    public init<T: ColorProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other.color_ptr)
        // no reference counting for GdkColor, cannot ref(cast(color_ptr))
    }

    /// Do-nothing destructor for `GdkColor`.
    deinit {
        // no reference counting for GdkColor, cannot unref(cast(color_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GdkColor, cannot ref(cast(color_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GdkColor, cannot ref(cast(color_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GdkColor, cannot ref(cast(color_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ColorProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GdkColor, cannot ref(cast(color_ptr))
    }



}

// MARK: no Color properties

// MARK: no Color signals


// MARK: Color Record: ColorProtocol extension (methods and fields)
public extension ColorProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GdkColor` instance.
    var color_ptr: UnsafeMutablePointer<GdkColor> { return ptr.assumingMemoryBound(to: GdkColor.self) }

    /// Makes a copy of a `GdkColor`.
    /// 
    /// The result must be freed using `gdk_color_free()`.
    ///
    /// **copy is deprecated:**
    /// Use #GdkRGBA
    @available(*, deprecated) func copy() -> UnsafeMutablePointer<GdkColor>! {
        let rv: UnsafeMutablePointer<GdkColor>! = cast(gdk_color_copy(cast(color_ptr)))
        return cast(rv)
    }

    /// Compares two colors.
    ///
    /// **equal is deprecated:**
    /// Use #GdkRGBA
    @available(*, deprecated) func equal(colorb: ColorProtocol) -> Bool {
        let rv = gdk_color_equal(cast(color_ptr), cast(colorb.ptr))
        return Bool(rv != 0)
    }

    /// Frees a `GdkColor` created with `gdk_color_copy()`.
    ///
    /// **free is deprecated:**
    /// Use #GdkRGBA
    @available(*, deprecated) func free() {
        gdk_color_free(cast(color_ptr))
    
    }

    /// A hash function suitable for using for a hash
    /// table that stores `GdkColors`.
    ///
    /// **hash is deprecated:**
    /// Use #GdkRGBA
    @available(*, deprecated) func hash() -> Int {
        let rv: Int = cast(gdk_color_hash(cast(color_ptr)))
        return Int(rv)
    }

    /// Returns a textual specification of `color` in the hexadecimal
    /// form “\`rrrrggggbbbb`” where “r”, “g” and “b” are hex digits
    /// representing the red, green and blue components respectively.
    /// 
    /// The returned string can be parsed by `gdk_color_parse()`.
    ///
    /// **to_string is deprecated:**
    /// Use #GdkRGBA
    @available(*, deprecated) func toString() -> String! {
        let rv: String! = cast(gdk_color_to_string(cast(color_ptr)))
        return cast(rv)
    }

    /// Parses a textual specification of a color and fill in the
    /// `red`, `green`, and `blue` fields of a `GdkColor`.
    /// 
    /// The string can either one of a large set of standard names
    /// (taken from the X11 `rgb.txt` file), or it can be a hexadecimal
    /// value in the form “\`rgb`” “\`rrggbb`”, “\`rrrgggbbb`” or
    /// “\`rrrrggggbbbb`” where “r”, “g” and “b” are hex digits of
    /// the red, green, and blue components of the color, respectively.
    /// (White in the four forms is “\`fff`”, “\`ffffff`”, “\`fffffffff`”
    /// and “\`ffffffffffff`”).
    ///
    /// **parse is deprecated:**
    /// Use #GdkRGBA
    @available(*, deprecated) func parse(spec: UnsafePointer<gchar>) -> Bool {
        let rv = gdk_color_parse(spec, cast(color_ptr))
        return Bool(rv != 0)
    }

    /// Sets the specified `GdkColor` as the source color of `cr`.
    ///
    /// **cairo_set_source_color is deprecated:**
    /// Use gdk_cairo_set_source_rgba() instead
    @available(*, deprecated) func cairoSetSourceColor(cr: cairo.ContextProtocol) {
        gdk_cairo_set_source_color(cast(cr.ptr), cast(color_ptr))
    
    }

    /// Parses a textual specification of a color and fill in the
    /// `red`, `green`, and `blue` fields of a `GdkColor`.
    /// 
    /// The string can either one of a large set of standard names
    /// (taken from the X11 `rgb.txt` file), or it can be a hexadecimal
    /// value in the form “\`rgb`” “\`rrggbb`”, “\`rrrgggbbb`” or
    /// “\`rrrrggggbbbb`” where “r”, “g” and “b” are hex digits of
    /// the red, green, and blue components of the color, respectively.
    /// (White in the four forms is “\`fff`”, “\`ffffff`”, “\`fffffffff`”
    /// and “\`ffffffffffff`”).
    ///
    /// **color_parse is deprecated:**
    /// Use #GdkRGBA
    @available(*, deprecated) func colorParse(spec: UnsafePointer<gchar>) -> Bool {
        let rv = gdk_color_parse(spec, cast(color_ptr))
        return Bool(rv != 0)
    }

    /// For allocated colors, the pixel value used to
    ///     draw this color on the screen. Not used anymore.
    var pixel: UInt32 {
        /// For allocated colors, the pixel value used to
        ///     draw this color on the screen. Not used anymore.
        get {
            let rv: UInt32 = cast(color_ptr.pointee.pixel)
            return rv
        }
        /// For allocated colors, the pixel value used to
        ///     draw this color on the screen. Not used anymore.
         set {
            color_ptr.pointee.pixel = guint32(newValue)
        }
    }

    /// The red component of the color. This is
    ///     a value between 0 and 65535, with 65535 indicating
    ///     full intensity
    var red: UInt16 {
        /// The red component of the color. This is
        ///     a value between 0 and 65535, with 65535 indicating
        ///     full intensity
        get {
            let rv: UInt16 = cast(color_ptr.pointee.red)
            return rv
        }
        /// The red component of the color. This is
        ///     a value between 0 and 65535, with 65535 indicating
        ///     full intensity
         set {
            color_ptr.pointee.red = guint16(newValue)
        }
    }

    /// The green component of the color
    var green: UInt16 {
        /// The green component of the color
        get {
            let rv: UInt16 = cast(color_ptr.pointee.green)
            return rv
        }
        /// The green component of the color
         set {
            color_ptr.pointee.green = guint16(newValue)
        }
    }

    /// The blue component of the color
    var blue: UInt16 {
        /// The blue component of the color
        get {
            let rv: UInt16 = cast(color_ptr.pointee.blue)
            return rv
        }
        /// The blue component of the color
         set {
            color_ptr.pointee.blue = guint16(newValue)
        }
    }

}



