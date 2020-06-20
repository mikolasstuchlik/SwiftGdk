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

// MARK: - AppLaunchContext Class

/// The `AppLaunchContextProtocol` protocol exposes the methods and properties of an underlying `GdkAppLaunchContext` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `AppLaunchContext`.
/// Alternatively, use `AppLaunchContextRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// GdkAppLaunchContext is an implementation of `GAppLaunchContext` that
/// handles launching an application in a graphical context. It provides
/// startup notification and allows to launch applications on a specific
/// screen or workspace.
/// 
/// ## Launching an application
/// 
/// (C Language Example):
/// ```C
/// GdkAppLaunchContext *context;
/// 
/// context = gdk_display_get_app_launch_context (display);
/// 
/// gdk_app_launch_context_set_screen (screen);
/// gdk_app_launch_context_set_timestamp (event->time);
/// 
/// if (!g_app_info_launch_default_for_uri ("http://www.gtk.org", context, &error))
///   g_warning ("Launching failed: %s\n", error->message);
/// 
/// g_object_unref (context);
/// ```
/// 
public protocol AppLaunchContextProtocol {
        /// Untyped pointer to the underlying `GdkAppLaunchContext` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GdkAppLaunchContext` instance.
    var app_launch_context_ptr: UnsafeMutablePointer<GdkAppLaunchContext> { get }
}

/// The `AppLaunchContextRef` type acts as a lightweight Swift reference to an underlying `GdkAppLaunchContext` instance.
/// It exposes methods that can operate on this data type through `AppLaunchContextProtocol` conformance.
/// Use `AppLaunchContextRef` only as an `unowned` reference to an existing `GdkAppLaunchContext` instance.
///
/// GdkAppLaunchContext is an implementation of `GAppLaunchContext` that
/// handles launching an application in a graphical context. It provides
/// startup notification and allows to launch applications on a specific
/// screen or workspace.
/// 
/// ## Launching an application
/// 
/// (C Language Example):
/// ```C
/// GdkAppLaunchContext *context;
/// 
/// context = gdk_display_get_app_launch_context (display);
/// 
/// gdk_app_launch_context_set_screen (screen);
/// gdk_app_launch_context_set_timestamp (event->time);
/// 
/// if (!g_app_info_launch_default_for_uri ("http://www.gtk.org", context, &error))
///   g_warning ("Launching failed: %s\n", error->message);
/// 
/// g_object_unref (context);
/// ```
/// 
public struct AppLaunchContextRef: AppLaunchContextProtocol {
        /// Untyped pointer to the underlying `GdkAppLaunchContext` instance.
    /// For type-safe access, use the generated, typed pointer `app_launch_context_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension AppLaunchContextRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GdkAppLaunchContext>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `AppLaunchContextProtocol`
    init<T: AppLaunchContextProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppLaunchContextProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppLaunchContextProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppLaunchContextProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppLaunchContextProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppLaunchContextProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GdkAppLaunchContext`.
    ///
    /// **new is deprecated:**
    /// Use gdk_display_get_app_launch_context() instead
    @available(*, deprecated) init() {
        let rv: UnsafeMutablePointer<GdkAppLaunchContext>! = cast(gdk_app_launch_context_new())
        ptr = UnsafeMutableRawPointer(cast(rv))
    }
}

/// The `AppLaunchContext` type acts as an owner of an underlying `GdkAppLaunchContext` instance.
/// It provides the methods that can operate on this data type through `AppLaunchContextProtocol` conformance.
/// Use `AppLaunchContext` as a strong reference or owner of a `GdkAppLaunchContext` instance.
///
/// GdkAppLaunchContext is an implementation of `GAppLaunchContext` that
/// handles launching an application in a graphical context. It provides
/// startup notification and allows to launch applications on a specific
/// screen or workspace.
/// 
/// ## Launching an application
/// 
/// (C Language Example):
/// ```C
/// GdkAppLaunchContext *context;
/// 
/// context = gdk_display_get_app_launch_context (display);
/// 
/// gdk_app_launch_context_set_screen (screen);
/// gdk_app_launch_context_set_timestamp (event->time);
/// 
/// if (!g_app_info_launch_default_for_uri ("http://www.gtk.org", context, &error))
///   g_warning ("Launching failed: %s\n", error->message);
/// 
/// g_object_unref (context);
/// ```
/// 
open class AppLaunchContext: AppLaunchContextProtocol {
        /// Untyped pointer to the underlying `GdkAppLaunchContext` instance.
    /// For type-safe access, use the generated, typed pointer `app_launch_context_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `AppLaunchContext` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GdkAppLaunchContext>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GdkAppLaunchContext` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `AppLaunchContext` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GdkAppLaunchContext>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GdkAppLaunchContext, cannot ref(cast(app_launch_context_ptr))
    }

    /// Reference intialiser for a related type that implements `AppLaunchContextProtocol`
    /// `GdkAppLaunchContext` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `AppLaunchContextProtocol`
    public init<T: AppLaunchContextProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other.app_launch_context_ptr)
        // no reference counting for GdkAppLaunchContext, cannot ref(cast(app_launch_context_ptr))
    }

    /// Do-nothing destructor for `GdkAppLaunchContext`.
    deinit {
        // no reference counting for GdkAppLaunchContext, cannot unref(cast(app_launch_context_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppLaunchContextProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppLaunchContextProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GdkAppLaunchContext, cannot ref(cast(app_launch_context_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppLaunchContextProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppLaunchContextProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GdkAppLaunchContext, cannot ref(cast(app_launch_context_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppLaunchContextProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppLaunchContextProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GdkAppLaunchContext, cannot ref(cast(app_launch_context_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppLaunchContextProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AppLaunchContextProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GdkAppLaunchContext, cannot ref(cast(app_launch_context_ptr))
    }

    /// Creates a new `GdkAppLaunchContext`.
    ///
    /// **new is deprecated:**
    /// Use gdk_display_get_app_launch_context() instead
    @available(*, deprecated) public init() {
        let rv: UnsafeMutablePointer<GdkAppLaunchContext>! = cast(gdk_app_launch_context_new())
        ptr = UnsafeMutableRawPointer(cast(rv))
    }


}

public enum AppLaunchContextPropertyName: String, PropertyNameProtocol {
    case display = "display"
}

public extension AppLaunchContextProtocol {
    /// Bind a `AppLaunchContextPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult func bind<Q: PropertyNameProtocol, T: ObjectProtocol>(property source_property: AppLaunchContextPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(cast(app_launch_context_ptr)).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
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

    /// Get the value of a AppLaunchContext property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    func get(property: AppLaunchContextPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a AppLaunchContext property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    func set(property: AppLaunchContextPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum AppLaunchContextSignalName: String, SignalNameProtocol {

    case notifyDisplay = "notify::display"
}

public extension AppLaunchContextProtocol {
    /// Connect a `AppLaunchContextSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: AppLaunchContextSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> Int {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> Int {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(app_launch_context_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

// MARK: AppLaunchContext Class: AppLaunchContextProtocol extension (methods and fields)
public extension AppLaunchContextProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GdkAppLaunchContext` instance.
    var app_launch_context_ptr: UnsafeMutablePointer<GdkAppLaunchContext> { return ptr.assumingMemoryBound(to: GdkAppLaunchContext.self) }

    /// Sets the workspace on which applications will be launched when
    /// using this context when running under a window manager that
    /// supports multiple workspaces, as described in the
    /// [Extended Window Manager Hints](http://www.freedesktop.org/Standards/wm-spec).
    /// 
    /// When the workspace is not specified or `desktop` is set to -1,
    /// it is up to the window manager to pick one, typically it will
    /// be the current workspace.
    func set(desktop: CInt) {
        gdk_app_launch_context_set_desktop(cast(app_launch_context_ptr), gint(desktop))
    
    }

    /// Sets the display on which applications will be launched when
    /// using this context. See also `gdk_app_launch_context_set_screen()`.
    ///
    /// **set_display is deprecated:**
    /// Use gdk_display_get_app_launch_context() instead
    @available(*, deprecated) func set(display: DisplayProtocol) {
        gdk_app_launch_context_set_display(cast(app_launch_context_ptr), cast(display.ptr))
    
    }

    /// Sets the icon for applications that are launched with this
    /// context.
    /// 
    /// Window Managers can use this information when displaying startup
    /// notification.
    /// 
    /// See also `gdk_app_launch_context_set_icon_name()`.
    func set(icon: UnsafeMutablePointer<GIcon>) {
        gdk_app_launch_context_set_icon(cast(app_launch_context_ptr), cast(icon))
    
    }

    /// Sets the icon for applications that are launched with this context.
    /// The `icon_name` will be interpreted in the same way as the Icon field
    /// in desktop files. See also `gdk_app_launch_context_set_icon()`.
    /// 
    /// If both `icon` and `icon_name` are set, the `icon_name` takes priority.
    /// If neither `icon` or `icon_name` is set, the icon is taken from either
    /// the file that is passed to launched application or from the `GAppInfo`
    /// for the launched application itself.
    func set(iconName icon_name: UnsafePointer<CChar>) {
        gdk_app_launch_context_set_icon_name(cast(app_launch_context_ptr), icon_name)
    
    }

    /// Sets the screen on which applications will be launched when
    /// using this context. See also `gdk_app_launch_context_set_display()`.
    /// 
    /// If both `screen` and `display` are set, the `screen` takes priority.
    /// If neither `screen` or `display` are set, the default screen and
    /// display are used.
    func set(screen: ScreenProtocol) {
        gdk_app_launch_context_set_screen(cast(app_launch_context_ptr), cast(screen.ptr))
    
    }

    /// Sets the timestamp of `context`. The timestamp should ideally
    /// be taken from the event that triggered the launch.
    /// 
    /// Window managers can use this information to avoid moving the
    /// focus to the newly launched application when the user is busy
    /// typing in another window. This is also known as 'focus stealing
    /// prevention'.
    func set(timestamp: UInt32) {
        gdk_app_launch_context_set_timestamp(cast(app_launch_context_ptr), guint32(timestamp))
    
    }


}



// MARK: - Cursor Class

/// The `CursorProtocol` protocol exposes the methods and properties of an underlying `GdkCursor` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Cursor`.
/// Alternatively, use `CursorRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A `GdkCursor` represents a cursor. Its contents are private.
public protocol CursorProtocol: ObjectProtocol {
        /// Untyped pointer to the underlying `GdkCursor` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GdkCursor` instance.
    var cursor_ptr: UnsafeMutablePointer<GdkCursor> { get }
}

/// The `CursorRef` type acts as a lightweight Swift reference to an underlying `GdkCursor` instance.
/// It exposes methods that can operate on this data type through `CursorProtocol` conformance.
/// Use `CursorRef` only as an `unowned` reference to an existing `GdkCursor` instance.
///
/// A `GdkCursor` represents a cursor. Its contents are private.
public struct CursorRef: CursorProtocol {
        /// Untyped pointer to the underlying `GdkCursor` instance.
    /// For type-safe access, use the generated, typed pointer `cursor_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension CursorRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GdkCursor>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `CursorProtocol`
    init<T: CursorProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CursorProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CursorProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CursorProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CursorProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CursorProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new cursor from the set of builtin cursors for the default display.
    /// See `gdk_cursor_new_for_display()`.
    /// 
    /// To make the cursor invisible, use `GDK_BLANK_CURSOR`.
    ///
    /// **new is deprecated:**
    /// Use gdk_cursor_new_for_display() instead.
    @available(*, deprecated) init( cursor_type: CursorType) {
        let rv: UnsafeMutablePointer<GdkCursor>! = cast(gdk_cursor_new(cursor_type))
        ptr = UnsafeMutableRawPointer(cast(rv))
    }

    /// Creates a new cursor from the set of builtin cursors.
    init(display: DisplayProtocol, cursorType cursor_type: CursorType) {
        let rv: UnsafeMutablePointer<GdkCursor>! = cast(gdk_cursor_new_for_display(cast(display.ptr), cursor_type))
        ptr = UnsafeMutableRawPointer(cast(rv))
    }

    /// Creates a new cursor by looking up `name` in the current cursor
    /// theme.
    /// 
    /// A recommended set of cursor names that will work across different
    /// platforms can be found in the CSS specification:
    /// - "none"
    /// - ![](default_cursor.png) "default"
    /// - ![](help_cursor.png) "help"
    /// - ![](pointer_cursor.png) "pointer"
    /// - ![](context_menu_cursor.png) "context-menu"
    /// - ![](progress_cursor.png) "progress"
    /// - ![](wait_cursor.png) "wait"
    /// - ![](cell_cursor.png) "cell"
    /// - ![](crosshair_cursor.png) "crosshair"
    /// - ![](text_cursor.png) "text"
    /// - ![](vertical_text_cursor.png) "vertical-text"
    /// - ![](alias_cursor.png) "alias"
    /// - ![](copy_cursor.png) "copy"
    /// - ![](no_drop_cursor.png) "no-drop"
    /// - ![](move_cursor.png) "move"
    /// - ![](not_allowed_cursor.png) "not-allowed"
    /// - ![](grab_cursor.png) "grab"
    /// - ![](grabbing_cursor.png) "grabbing"
    /// - ![](all_scroll_cursor.png) "all-scroll"
    /// - ![](col_resize_cursor.png) "col-resize"
    /// - ![](row_resize_cursor.png) "row-resize"
    /// - ![](n_resize_cursor.png) "n-resize"
    /// - ![](e_resize_cursor.png) "e-resize"
    /// - ![](s_resize_cursor.png) "s-resize"
    /// - ![](w_resize_cursor.png) "w-resize"
    /// - ![](ne_resize_cursor.png) "ne-resize"
    /// - ![](nw_resize_cursor.png) "nw-resize"
    /// - ![](sw_resize_cursor.png) "sw-resize"
    /// - ![](se_resize_cursor.png) "se-resize"
    /// - ![](ew_resize_cursor.png) "ew-resize"
    /// - ![](ns_resize_cursor.png) "ns-resize"
    /// - ![](nesw_resize_cursor.png) "nesw-resize"
    /// - ![](nwse_resize_cursor.png) "nwse-resize"
    /// - ![](zoom_in_cursor.png) "zoom-in"
    /// - ![](zoom_out_cursor.png) "zoom-out"
    init(name display: DisplayProtocol, name: UnsafePointer<gchar>) {
        let rv: UnsafeMutablePointer<GdkCursor>! = cast(gdk_cursor_new_from_name(cast(display.ptr), name))
        ptr = UnsafeMutableRawPointer(cast(rv))
    }

    /// Creates a new cursor from a pixbuf.
    /// 
    /// Not all GDK backends support RGBA cursors. If they are not
    /// supported, a monochrome approximation will be displayed.
    /// The functions `gdk_display_supports_cursor_alpha()` and
    /// `gdk_display_supports_cursor_color()` can be used to determine
    /// whether RGBA cursors are supported;
    /// `gdk_display_get_default_cursor_size()` and
    /// `gdk_display_get_maximal_cursor_size()` give information about
    /// cursor sizes.
    /// 
    /// If `x` or `y` are `-1`, the pixbuf must have
    /// options named “x_hot” and “y_hot”, resp., containing
    /// integer values between `0` and the width resp. height of
    /// the pixbuf. (Since: 3.0)
    /// 
    /// On the X backend, support for RGBA cursors requires a
    /// sufficently new version of the X Render extension.
    init(pixbuf display: DisplayProtocol, pixbuf: PixbufProtocol, x: CInt, y: CInt) {
        let rv: UnsafeMutablePointer<GdkCursor>! = cast(gdk_cursor_new_from_pixbuf(cast(display.ptr), cast(pixbuf.ptr), gint(x), gint(y)))
        ptr = UnsafeMutableRawPointer(cast(rv))
    }

    /// Creates a new cursor from a cairo image surface.
    /// 
    /// Not all GDK backends support RGBA cursors. If they are not
    /// supported, a monochrome approximation will be displayed.
    /// The functions `gdk_display_supports_cursor_alpha()` and
    /// `gdk_display_supports_cursor_color()` can be used to determine
    /// whether RGBA cursors are supported;
    /// `gdk_display_get_default_cursor_size()` and
    /// `gdk_display_get_maximal_cursor_size()` give information about
    /// cursor sizes.
    /// 
    /// On the X backend, support for RGBA cursors requires a
    /// sufficently new version of the X Render extension.
    init(surface display: DisplayProtocol, surface: SurfaceProtocol, x: gdouble, y: gdouble) {
        let rv: UnsafeMutablePointer<GdkCursor>! = cast(gdk_cursor_new_from_surface(cast(display.ptr), cast(surface.ptr), x, y))
        ptr = UnsafeMutableRawPointer(cast(rv))
    }
    /// Creates a new cursor from the set of builtin cursors.
    static func newFor(display: DisplayProtocol, cursorType cursor_type: CursorType) -> CursorRef! {
        let rv: UnsafeMutablePointer<GdkCursor>! = cast(gdk_cursor_new_for_display(cast(display.ptr), cursor_type))
        return rv.map { CursorRef(cast($0)) }
    }

    /// Creates a new cursor by looking up `name` in the current cursor
    /// theme.
    /// 
    /// A recommended set of cursor names that will work across different
    /// platforms can be found in the CSS specification:
    /// - "none"
    /// - ![](default_cursor.png) "default"
    /// - ![](help_cursor.png) "help"
    /// - ![](pointer_cursor.png) "pointer"
    /// - ![](context_menu_cursor.png) "context-menu"
    /// - ![](progress_cursor.png) "progress"
    /// - ![](wait_cursor.png) "wait"
    /// - ![](cell_cursor.png) "cell"
    /// - ![](crosshair_cursor.png) "crosshair"
    /// - ![](text_cursor.png) "text"
    /// - ![](vertical_text_cursor.png) "vertical-text"
    /// - ![](alias_cursor.png) "alias"
    /// - ![](copy_cursor.png) "copy"
    /// - ![](no_drop_cursor.png) "no-drop"
    /// - ![](move_cursor.png) "move"
    /// - ![](not_allowed_cursor.png) "not-allowed"
    /// - ![](grab_cursor.png) "grab"
    /// - ![](grabbing_cursor.png) "grabbing"
    /// - ![](all_scroll_cursor.png) "all-scroll"
    /// - ![](col_resize_cursor.png) "col-resize"
    /// - ![](row_resize_cursor.png) "row-resize"
    /// - ![](n_resize_cursor.png) "n-resize"
    /// - ![](e_resize_cursor.png) "e-resize"
    /// - ![](s_resize_cursor.png) "s-resize"
    /// - ![](w_resize_cursor.png) "w-resize"
    /// - ![](ne_resize_cursor.png) "ne-resize"
    /// - ![](nw_resize_cursor.png) "nw-resize"
    /// - ![](sw_resize_cursor.png) "sw-resize"
    /// - ![](se_resize_cursor.png) "se-resize"
    /// - ![](ew_resize_cursor.png) "ew-resize"
    /// - ![](ns_resize_cursor.png) "ns-resize"
    /// - ![](nesw_resize_cursor.png) "nesw-resize"
    /// - ![](nwse_resize_cursor.png) "nwse-resize"
    /// - ![](zoom_in_cursor.png) "zoom-in"
    /// - ![](zoom_out_cursor.png) "zoom-out"
    static func newFrom(name display: DisplayProtocol, name: UnsafePointer<gchar>) -> CursorRef! {
        let rv: UnsafeMutablePointer<GdkCursor>! = cast(gdk_cursor_new_from_name(cast(display.ptr), name))
        return rv.map { CursorRef(cast($0)) }
    }

    /// Creates a new cursor from a pixbuf.
    /// 
    /// Not all GDK backends support RGBA cursors. If they are not
    /// supported, a monochrome approximation will be displayed.
    /// The functions `gdk_display_supports_cursor_alpha()` and
    /// `gdk_display_supports_cursor_color()` can be used to determine
    /// whether RGBA cursors are supported;
    /// `gdk_display_get_default_cursor_size()` and
    /// `gdk_display_get_maximal_cursor_size()` give information about
    /// cursor sizes.
    /// 
    /// If `x` or `y` are `-1`, the pixbuf must have
    /// options named “x_hot” and “y_hot”, resp., containing
    /// integer values between `0` and the width resp. height of
    /// the pixbuf. (Since: 3.0)
    /// 
    /// On the X backend, support for RGBA cursors requires a
    /// sufficently new version of the X Render extension.
    static func newFrom(pixbuf display: DisplayProtocol, pixbuf: PixbufProtocol, x: CInt, y: CInt) -> CursorRef! {
        let rv: UnsafeMutablePointer<GdkCursor>! = cast(gdk_cursor_new_from_pixbuf(cast(display.ptr), cast(pixbuf.ptr), gint(x), gint(y)))
        return rv.map { CursorRef(cast($0)) }
    }

    /// Creates a new cursor from a cairo image surface.
    /// 
    /// Not all GDK backends support RGBA cursors. If they are not
    /// supported, a monochrome approximation will be displayed.
    /// The functions `gdk_display_supports_cursor_alpha()` and
    /// `gdk_display_supports_cursor_color()` can be used to determine
    /// whether RGBA cursors are supported;
    /// `gdk_display_get_default_cursor_size()` and
    /// `gdk_display_get_maximal_cursor_size()` give information about
    /// cursor sizes.
    /// 
    /// On the X backend, support for RGBA cursors requires a
    /// sufficently new version of the X Render extension.
    static func newFrom(surface display: DisplayProtocol, surface: SurfaceProtocol, x: gdouble, y: gdouble) -> CursorRef! {
        let rv: UnsafeMutablePointer<GdkCursor>! = cast(gdk_cursor_new_from_surface(cast(display.ptr), cast(surface.ptr), x, y))
        return rv.map { CursorRef(cast($0)) }
    }
}

/// The `Cursor` type acts as a reference-counted owner of an underlying `GdkCursor` instance.
/// It provides the methods that can operate on this data type through `CursorProtocol` conformance.
/// Use `Cursor` as a strong reference or owner of a `GdkCursor` instance.
///
/// A `GdkCursor` represents a cursor. Its contents are private.
open class Cursor: Object, CursorProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Cursor` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GdkCursor>) {
        super.init(cast(op))
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GdkCursor`.
    /// i.e., ownership is transferred to the `Cursor` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GdkCursor>) {
        super.init(retaining: cast(op))
    }

    /// Reference intialiser for a related type that implements `CursorProtocol`
    /// Will retain `GdkCursor`.
    /// - Parameter other: an instance of a related type that implements `CursorProtocol`
    public init<T: CursorProtocol>(cursor other: T) {
        super.init(retaining: cast(other.cursor_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CursorProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CursorProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CursorProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CursorProtocol`.**
    override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CursorProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CursorProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CursorProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CursorProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new cursor from the set of builtin cursors for the default display.
    /// See `gdk_cursor_new_for_display()`.
    /// 
    /// To make the cursor invisible, use `GDK_BLANK_CURSOR`.
    ///
    /// **new is deprecated:**
    /// Use gdk_cursor_new_for_display() instead.
    @available(*, deprecated) public init( cursor_type: CursorType) {
        let rv: UnsafeMutablePointer<GdkCursor>! = cast(gdk_cursor_new(cursor_type))
        super.init(cast(rv))
    }

    /// Creates a new cursor from the set of builtin cursors.
    public init(display: DisplayProtocol, cursorType cursor_type: CursorType) {
        let rv: UnsafeMutablePointer<GdkCursor>! = cast(gdk_cursor_new_for_display(cast(display.ptr), cursor_type))
        super.init(cast(rv))
    }

    /// Creates a new cursor by looking up `name` in the current cursor
    /// theme.
    /// 
    /// A recommended set of cursor names that will work across different
    /// platforms can be found in the CSS specification:
    /// - "none"
    /// - ![](default_cursor.png) "default"
    /// - ![](help_cursor.png) "help"
    /// - ![](pointer_cursor.png) "pointer"
    /// - ![](context_menu_cursor.png) "context-menu"
    /// - ![](progress_cursor.png) "progress"
    /// - ![](wait_cursor.png) "wait"
    /// - ![](cell_cursor.png) "cell"
    /// - ![](crosshair_cursor.png) "crosshair"
    /// - ![](text_cursor.png) "text"
    /// - ![](vertical_text_cursor.png) "vertical-text"
    /// - ![](alias_cursor.png) "alias"
    /// - ![](copy_cursor.png) "copy"
    /// - ![](no_drop_cursor.png) "no-drop"
    /// - ![](move_cursor.png) "move"
    /// - ![](not_allowed_cursor.png) "not-allowed"
    /// - ![](grab_cursor.png) "grab"
    /// - ![](grabbing_cursor.png) "grabbing"
    /// - ![](all_scroll_cursor.png) "all-scroll"
    /// - ![](col_resize_cursor.png) "col-resize"
    /// - ![](row_resize_cursor.png) "row-resize"
    /// - ![](n_resize_cursor.png) "n-resize"
    /// - ![](e_resize_cursor.png) "e-resize"
    /// - ![](s_resize_cursor.png) "s-resize"
    /// - ![](w_resize_cursor.png) "w-resize"
    /// - ![](ne_resize_cursor.png) "ne-resize"
    /// - ![](nw_resize_cursor.png) "nw-resize"
    /// - ![](sw_resize_cursor.png) "sw-resize"
    /// - ![](se_resize_cursor.png) "se-resize"
    /// - ![](ew_resize_cursor.png) "ew-resize"
    /// - ![](ns_resize_cursor.png) "ns-resize"
    /// - ![](nesw_resize_cursor.png) "nesw-resize"
    /// - ![](nwse_resize_cursor.png) "nwse-resize"
    /// - ![](zoom_in_cursor.png) "zoom-in"
    /// - ![](zoom_out_cursor.png) "zoom-out"
    public init(name display: DisplayProtocol, name: UnsafePointer<gchar>) {
        let rv: UnsafeMutablePointer<GdkCursor>! = cast(gdk_cursor_new_from_name(cast(display.ptr), name))
        super.init(cast(rv))
    }

    /// Creates a new cursor from a pixbuf.
    /// 
    /// Not all GDK backends support RGBA cursors. If they are not
    /// supported, a monochrome approximation will be displayed.
    /// The functions `gdk_display_supports_cursor_alpha()` and
    /// `gdk_display_supports_cursor_color()` can be used to determine
    /// whether RGBA cursors are supported;
    /// `gdk_display_get_default_cursor_size()` and
    /// `gdk_display_get_maximal_cursor_size()` give information about
    /// cursor sizes.
    /// 
    /// If `x` or `y` are `-1`, the pixbuf must have
    /// options named “x_hot” and “y_hot”, resp., containing
    /// integer values between `0` and the width resp. height of
    /// the pixbuf. (Since: 3.0)
    /// 
    /// On the X backend, support for RGBA cursors requires a
    /// sufficently new version of the X Render extension.
    public init(pixbuf display: DisplayProtocol, pixbuf: PixbufProtocol, x: CInt, y: CInt) {
        let rv: UnsafeMutablePointer<GdkCursor>! = cast(gdk_cursor_new_from_pixbuf(cast(display.ptr), cast(pixbuf.ptr), gint(x), gint(y)))
        super.init(cast(rv))
    }

    /// Creates a new cursor from a cairo image surface.
    /// 
    /// Not all GDK backends support RGBA cursors. If they are not
    /// supported, a monochrome approximation will be displayed.
    /// The functions `gdk_display_supports_cursor_alpha()` and
    /// `gdk_display_supports_cursor_color()` can be used to determine
    /// whether RGBA cursors are supported;
    /// `gdk_display_get_default_cursor_size()` and
    /// `gdk_display_get_maximal_cursor_size()` give information about
    /// cursor sizes.
    /// 
    /// On the X backend, support for RGBA cursors requires a
    /// sufficently new version of the X Render extension.
    public init(surface display: DisplayProtocol, surface: SurfaceProtocol, x: gdouble, y: gdouble) {
        let rv: UnsafeMutablePointer<GdkCursor>! = cast(gdk_cursor_new_from_surface(cast(display.ptr), cast(surface.ptr), x, y))
        super.init(cast(rv))
    }

    /// Creates a new cursor from the set of builtin cursors.
    public static func newFor(display: DisplayProtocol, cursorType cursor_type: CursorType) -> Cursor! {
        let rv: UnsafeMutablePointer<GdkCursor>! = cast(gdk_cursor_new_for_display(cast(display.ptr), cursor_type))
        return rv.map { Cursor(cast($0)) }
    }

    /// Creates a new cursor by looking up `name` in the current cursor
    /// theme.
    /// 
    /// A recommended set of cursor names that will work across different
    /// platforms can be found in the CSS specification:
    /// - "none"
    /// - ![](default_cursor.png) "default"
    /// - ![](help_cursor.png) "help"
    /// - ![](pointer_cursor.png) "pointer"
    /// - ![](context_menu_cursor.png) "context-menu"
    /// - ![](progress_cursor.png) "progress"
    /// - ![](wait_cursor.png) "wait"
    /// - ![](cell_cursor.png) "cell"
    /// - ![](crosshair_cursor.png) "crosshair"
    /// - ![](text_cursor.png) "text"
    /// - ![](vertical_text_cursor.png) "vertical-text"
    /// - ![](alias_cursor.png) "alias"
    /// - ![](copy_cursor.png) "copy"
    /// - ![](no_drop_cursor.png) "no-drop"
    /// - ![](move_cursor.png) "move"
    /// - ![](not_allowed_cursor.png) "not-allowed"
    /// - ![](grab_cursor.png) "grab"
    /// - ![](grabbing_cursor.png) "grabbing"
    /// - ![](all_scroll_cursor.png) "all-scroll"
    /// - ![](col_resize_cursor.png) "col-resize"
    /// - ![](row_resize_cursor.png) "row-resize"
    /// - ![](n_resize_cursor.png) "n-resize"
    /// - ![](e_resize_cursor.png) "e-resize"
    /// - ![](s_resize_cursor.png) "s-resize"
    /// - ![](w_resize_cursor.png) "w-resize"
    /// - ![](ne_resize_cursor.png) "ne-resize"
    /// - ![](nw_resize_cursor.png) "nw-resize"
    /// - ![](sw_resize_cursor.png) "sw-resize"
    /// - ![](se_resize_cursor.png) "se-resize"
    /// - ![](ew_resize_cursor.png) "ew-resize"
    /// - ![](ns_resize_cursor.png) "ns-resize"
    /// - ![](nesw_resize_cursor.png) "nesw-resize"
    /// - ![](nwse_resize_cursor.png) "nwse-resize"
    /// - ![](zoom_in_cursor.png) "zoom-in"
    /// - ![](zoom_out_cursor.png) "zoom-out"
    public static func newFrom(name display: DisplayProtocol, name: UnsafePointer<gchar>) -> Cursor! {
        let rv: UnsafeMutablePointer<GdkCursor>! = cast(gdk_cursor_new_from_name(cast(display.ptr), name))
        return rv.map { Cursor(cast($0)) }
    }

    /// Creates a new cursor from a pixbuf.
    /// 
    /// Not all GDK backends support RGBA cursors. If they are not
    /// supported, a monochrome approximation will be displayed.
    /// The functions `gdk_display_supports_cursor_alpha()` and
    /// `gdk_display_supports_cursor_color()` can be used to determine
    /// whether RGBA cursors are supported;
    /// `gdk_display_get_default_cursor_size()` and
    /// `gdk_display_get_maximal_cursor_size()` give information about
    /// cursor sizes.
    /// 
    /// If `x` or `y` are `-1`, the pixbuf must have
    /// options named “x_hot” and “y_hot”, resp., containing
    /// integer values between `0` and the width resp. height of
    /// the pixbuf. (Since: 3.0)
    /// 
    /// On the X backend, support for RGBA cursors requires a
    /// sufficently new version of the X Render extension.
    public static func newFrom(pixbuf display: DisplayProtocol, pixbuf: PixbufProtocol, x: CInt, y: CInt) -> Cursor! {
        let rv: UnsafeMutablePointer<GdkCursor>! = cast(gdk_cursor_new_from_pixbuf(cast(display.ptr), cast(pixbuf.ptr), gint(x), gint(y)))
        return rv.map { Cursor(cast($0)) }
    }

    /// Creates a new cursor from a cairo image surface.
    /// 
    /// Not all GDK backends support RGBA cursors. If they are not
    /// supported, a monochrome approximation will be displayed.
    /// The functions `gdk_display_supports_cursor_alpha()` and
    /// `gdk_display_supports_cursor_color()` can be used to determine
    /// whether RGBA cursors are supported;
    /// `gdk_display_get_default_cursor_size()` and
    /// `gdk_display_get_maximal_cursor_size()` give information about
    /// cursor sizes.
    /// 
    /// On the X backend, support for RGBA cursors requires a
    /// sufficently new version of the X Render extension.
    public static func newFrom(surface display: DisplayProtocol, surface: SurfaceProtocol, x: gdouble, y: gdouble) -> Cursor! {
        let rv: UnsafeMutablePointer<GdkCursor>! = cast(gdk_cursor_new_from_surface(cast(display.ptr), cast(surface.ptr), x, y))
        return rv.map { Cursor(cast($0)) }
    }

}

public enum CursorPropertyName: String, PropertyNameProtocol {
    case cursorType = "cursor-type"
    case display = "display"
}

public extension CursorProtocol {
    /// Bind a `CursorPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult func bind<Q: PropertyNameProtocol, T: ObjectProtocol>(property source_property: CursorPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(cast(cursor_ptr)).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
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

    /// Get the value of a Cursor property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    func get(property: CursorPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a Cursor property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    func set(property: CursorPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum CursorSignalName: String, SignalNameProtocol {
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
    case notifyCursorType = "notify::cursor-type"
    case notifyDisplay = "notify::display"
}

public extension CursorProtocol {
    /// Connect a `CursorSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: CursorSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> Int {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> Int {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(cursor_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

// MARK: Cursor Class: CursorProtocol extension (methods and fields)
public extension CursorProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GdkCursor` instance.
    var cursor_ptr: UnsafeMutablePointer<GdkCursor> { return ptr.assumingMemoryBound(to: GdkCursor.self) }

    /// Returns the cursor type for this cursor.
    func getCursorType() -> GdkCursorType {
        let rv = gdk_cursor_get_cursor_type(cast(cursor_ptr))
        return cast(rv)
    }

    /// Returns the display on which the `GdkCursor` is defined.
    func getDisplay() -> UnsafeMutablePointer<GdkDisplay>! {
        let rv: UnsafeMutablePointer<GdkDisplay>! = cast(gdk_cursor_get_display(cast(cursor_ptr)))
        return cast(rv)
    }

    /// Returns a `GdkPixbuf` with the image used to display the cursor.
    /// 
    /// Note that depending on the capabilities of the windowing system and
    /// on the cursor, GDK may not be able to obtain the image data. In this
    /// case, `nil` is returned.
    func getImage() -> UnsafeMutablePointer<GdkPixbuf>! {
        let rv: UnsafeMutablePointer<GdkPixbuf>! = cast(gdk_cursor_get_image(cast(cursor_ptr)))
        return cast(rv)
    }

    /// Returns a cairo image surface with the image used to display the cursor.
    /// 
    /// Note that depending on the capabilities of the windowing system and
    /// on the cursor, GDK may not be able to obtain the image data. In this
    /// case, `nil` is returned.
    func getSurface(xHot x_hot: UnsafeMutablePointer<gdouble>, yHot y_hot: UnsafeMutablePointer<gdouble>) -> UnsafeMutablePointer<cairo_surface_t>! {
        let rv: UnsafeMutablePointer<cairo_surface_t>! = cast(gdk_cursor_get_surface(cast(cursor_ptr), cast(x_hot), cast(y_hot)))
        return cast(rv)
    }

    /// Adds a reference to `cursor`.
    ///
    /// **ref is deprecated:**
    /// Use g_object_ref() instead
    @available(*, deprecated) func ref() -> UnsafeMutablePointer<GdkCursor>! {
        let rv: UnsafeMutablePointer<GdkCursor>! = cast(g_object_ref(cast(cursor_ptr)))
        return cast(rv)
    }

    /// Removes a reference from `cursor`, deallocating the cursor
    /// if no references remain.
    ///
    /// **unref is deprecated:**
    /// Use g_object_unref() instead
    @available(*, deprecated) func unref() {
        g_object_unref(cast(cursor_ptr))
    
    }

    /// Grabs the pointer (usually a mouse) so that all events are passed to this
    /// application until the pointer is ungrabbed with `gdk_pointer_ungrab()`, or
    /// the grab window becomes unviewable.
    /// This overrides any previous pointer grab by this client.
    /// 
    /// Pointer grabs are used for operations which need complete control over mouse
    /// events, even if the mouse leaves the application.
    /// For example in GTK+ it is used for Drag and Drop, for dragging the handle in
    /// the `GtkHPaned` and `GtkVPaned` widgets.
    /// 
    /// Note that if the event mask of an X window has selected both button press and
    /// button release events, then a button press event will cause an automatic
    /// pointer grab until the button is released.
    /// X does this automatically since most applications expect to receive button
    /// press and release events in pairs.
    /// It is equivalent to a pointer grab on the window with `owner_events` set to
    /// `true`.
    /// 
    /// If you set up anything at the time you take the grab that needs to be cleaned
    /// up when the grab ends, you should handle the `GdkEventGrabBroken` events that
    /// are emitted when the grab ends unvoluntarily.
    ///
    /// **pointer_grab is deprecated:**
    /// Use gdk_device_grab() instead.
    @available(*, deprecated) func pointerGrab(window: WindowProtocol, ownerEvents owner_events: Bool, eventMask event_mask: EventMask, confineTo confine_to: WindowProtocol, time_: UInt32) -> GdkGrabStatus {
        let rv = gdk_pointer_grab(cast(window.ptr), gboolean(owner_events ? 1 : 0), event_mask.value, cast(confine_to.ptr), cast(cursor_ptr), guint32(time_))
        return cast(rv)
    }
    /// Returns the cursor type for this cursor.
    var cursorType: GdkCursorType {
        /// Returns the cursor type for this cursor.
        get {
            let rv = gdk_cursor_get_cursor_type(cast(cursor_ptr))
            return cast(rv)
        }
    }

    var display: UnsafeMutablePointer<GdkDisplay>! {
        /// Returns the display on which the `GdkCursor` is defined.
        get {
            let rv: UnsafeMutablePointer<GdkDisplay>! = cast(gdk_cursor_get_display(cast(cursor_ptr)))
            return cast(rv)
        }
    }

    /// Returns a `GdkPixbuf` with the image used to display the cursor.
    /// 
    /// Note that depending on the capabilities of the windowing system and
    /// on the cursor, GDK may not be able to obtain the image data. In this
    /// case, `nil` is returned.
    var image: UnsafeMutablePointer<GdkPixbuf>! {
        /// Returns a `GdkPixbuf` with the image used to display the cursor.
        /// 
        /// Note that depending on the capabilities of the windowing system and
        /// on the cursor, GDK may not be able to obtain the image data. In this
        /// case, `nil` is returned.
        get {
            let rv: UnsafeMutablePointer<GdkPixbuf>! = cast(gdk_cursor_get_image(cast(cursor_ptr)))
            return cast(rv)
        }
    }


}



