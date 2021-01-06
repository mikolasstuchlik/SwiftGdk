import CGLib
import CCairo
import CPango
import CGdkPixbuf
import CGdk
import GLib
import GLibObject
import GIO
import Pango
import Cairo
import PangoCairo
import GdkPixbuf

/// This is the main way to draw GL content in GTK. It takes a render buffer ID
/// (`source_type` == `GL_RENDERBUFFER`) or a texture id (`source_type` == `GL_TEXTURE`)
/// and draws it onto `cr` with an OVER operation, respecting the current clip.
/// The top left corner of the rectangle specified by `x`, `y`, `width` and `height`
/// will be drawn at the current (0,0) position of the cairo_t.
/// 
/// This will work for *all* cairo_t, as long as `surface` is realized, but the
/// fallback implementation that reads back the pixels from the buffer may be
/// used in the general case. In the case of direct drawing to a surface with
/// no special effects applied to `cr` it will however use a more efficient
/// approach.
/// 
/// For `GL_RENDERBUFFER` the code will always fall back to software for buffers
/// with alpha components, so make sure you use `GL_TEXTURE` if using alpha.
/// 
/// Calling this may change the current GL context.
@inlinable public func cairoDrawFromGl<ContextT: Cairo.ContextProtocol, SurfaceT: SurfaceProtocol>(cr: ContextT, surface: SurfaceT, source: Int, sourceType: Int, bufferScale: Int, x: Int, y: Int, width: Int, height: Int) {
    gdk_cairo_draw_from_gl(cr._ptr, surface.surface_ptr, gint(source), gint(sourceType), gint(bufferScale), gint(x), gint(y), gint(width), gint(height))

}




/// Adds the given rectangle to the current path of `cr`.
@inlinable public func cairoRectangle<ContextT: Cairo.ContextProtocol, RectangleT: RectangleProtocol>(cr: ContextT, rectangle: RectangleT) {
    gdk_cairo_rectangle(cr._ptr, rectangle.rectangle_ptr)

}




/// Adds the given region to the current path of `cr`.
@inlinable public func cairoRegion<ContextT: Cairo.ContextProtocol, RegionT: Cairo.RegionProtocol>(cr: ContextT, region: RegionT) {
    gdk_cairo_region(cr._ptr, region._ptr)

}




/// Creates region that describes covers the area where the given
/// `surface` is more than 50% opaque.
/// 
/// This function takes into account device offsets that might be
/// set with `cairo_surface_set_device_offset()`.
@inlinable public func cairoRegionCreateFrom<SurfaceT: Cairo.SurfaceProtocol>(surface: SurfaceT) -> Cairo.RegionRef! {
    guard let rv = Cairo.RegionRef(gdk_cairo_region_create_from_surface(surface._ptr)) else { return nil }
    return rv
}




/// Sets the given pixbuf as the source pattern for `cr`.
/// 
/// The pattern has an extend mode of `CAIRO_EXTEND_NONE` and is aligned
/// so that the origin of `pixbuf` is `pixbuf_x`, `pixbuf_y`.
@inlinable public func cairoSetSourcePixbuf<ContextT: Cairo.ContextProtocol, PixbufT: PixbufProtocol>(cr: ContextT, pixbuf: PixbufT, pixbufX: CDouble, pixbufY: CDouble) {
    gdk_cairo_set_source_pixbuf(cr._ptr, pixbuf.pixbuf_ptr, pixbufX, pixbufY)

}




/// Sets the specified `GdkRGBA` as the source color of `cr`.
@inlinable public func cairoSetSourceRgba<ContextT: Cairo.ContextProtocol, RGBAT: RGBAProtocol>(cr: ContextT, rgba: RGBAT) {
    gdk_cairo_set_source_rgba(cr._ptr, rgba.rgba_ptr)

}




/// Read content from the given input stream and deserialize it, asynchronously.
/// When the operation is finished, `callback` will be called. You can then
/// call `gdk_content_deserialize_finish()` to get the result of the operation.
@inlinable public func contentDeserializeAsync(stream: UnsafeMutablePointer<GInputStream>!, mimeType: UnsafePointer<CChar>!, type: GType, ioPriority: Int, cancellable: UnsafeMutablePointer<GCancellable>? = nil, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
    gdk_content_deserialize_async(stream, mimeType, type, gint(ioPriority), cancellable, callback, userData)

}




/// Finishes a content deserialization operation.
@inlinable public func contentDeserializeFinish<ValueT: GLibObject.ValueProtocol>(result: UnsafeMutablePointer<GAsyncResult>!, value: ValueT) throws -> Bool {
    var error: UnsafeMutablePointer<GError>?
    let rv = ((gdk_content_deserialize_finish(result, value.value_ptr, &error)) != 0)
    if let error = error { throw GLibError(error) }
    return rv
}




/// Registers a function to create objects of a given `type` from
/// a serialized representation with the given mime type.
@inlinable public func contentRegisterDeserializer(mimeType: UnsafePointer<CChar>!, type: GType, deserialize: GdkContentDeserializeFunc?, data: gpointer! = nil, notify: GDestroyNotify?) {
    gdk_content_register_deserializer(mimeType, type, deserialize, data, notify)

}




/// Registers a function to convert objects of the given `type` to
/// a serialized representation with the given mime type.
@inlinable public func contentRegisterSerializer(type: GType, mimeType: UnsafePointer<CChar>!, serialize: GdkContentSerializeFunc?, data: gpointer! = nil, notify: GDestroyNotify?) {
    gdk_content_register_serializer(type, mimeType, serialize, data, notify)

}




/// Serialize content and write it to the given output stream, asynchronously.
/// When the operation is finished, `callback` will be called. You can then
/// call `gdk_content_serialize_finish()` to get the result of the operation.
@inlinable public func contentSerializeAsync<ValueT: GLibObject.ValueProtocol>(stream: UnsafeMutablePointer<GOutputStream>!, mimeType: UnsafePointer<CChar>!, value: ValueT, ioPriority: Int, cancellable: UnsafeMutablePointer<GCancellable>? = nil, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
    gdk_content_serialize_async(stream, mimeType, value.value_ptr, gint(ioPriority), cancellable, callback, userData)

}




/// Finishes a content serialization operation.
@inlinable public func contentSerializeFinish(result: UnsafeMutablePointer<GAsyncResult>!) throws -> Bool {
    var error: UnsafeMutablePointer<GError>?
    let rv = ((gdk_content_serialize_finish(result, &error)) != 0)
    if let error = error { throw GLibError(error) }
    return rv
}




/// Checks if `action` represents a single action or if it
/// includes multiple flags that can be selected from.
/// 
/// When `action` is 0 - ie no action was given, `true`
/// is returned.
@inlinable public func dragActionIsUnique(action: DragAction) -> Bool {
    let rv = ((gdk_drag_action_is_unique(action.value)) != 0)
    return rv
}




/// If both events contain X/Y information, this function will return `true`
/// and return in `angle` the relative angle from `event1` to `event2`. The rotation
/// direction for positive angles is from the positive X axis towards the positive
/// Y axis.
@inlinable public func eventsGetAngle<EventT: EventProtocol>(event1: EventT, event2: EventT, angle: UnsafeMutablePointer<CDouble>!) -> Bool {
    let rv = ((gdk_events_get_angle(event1.event_ptr, event2.event_ptr, angle)) != 0)
    return rv
}




/// If both events contain X/Y information, the center of both coordinates
/// will be returned in `x` and `y`.
@inlinable public func eventsGetCenter<EventT: EventProtocol>(event1: EventT, event2: EventT, x: UnsafeMutablePointer<CDouble>!, y: UnsafeMutablePointer<CDouble>!) -> Bool {
    let rv = ((gdk_events_get_center(event1.event_ptr, event2.event_ptr, x, y)) != 0)
    return rv
}




/// If both events have X/Y information, the distance between both coordinates
/// (as in a straight line going from `event1` to `event2`) will be returned.
@inlinable public func eventsGetDistance<EventT: EventProtocol>(event1: EventT, event2: EventT, distance: UnsafeMutablePointer<CDouble>!) -> Bool {
    let rv = ((gdk_events_get_distance(event1.event_ptr, event2.event_ptr, distance)) != 0)
    return rv
}




@inlinable public func glErrorQuark() -> GQuark {
    let rv = gdk_gl_error_quark()
    return rv
}




/// Canonicalizes the given mime type and interns the result.
/// 
/// If `string` is not a valid mime type, `nil` is returned instead.
/// See RFC 2048 for the syntax if mime types.
@inlinable public func internMimeType(string: UnsafePointer<CChar>!) -> String! {
    guard let rv = gdk_intern_mime_type(string).map({ String(cString: $0) }) else { return nil }
    return rv
}




/// Obtains the upper- and lower-case versions of the keyval `symbol`.
/// Examples of keyvals are `GDK_KEY_a`, `GDK_KEY_Enter`, `GDK_KEY_F1`, etc.
@inlinable public func keyvalConvertCase(symbol: Int, lower: UnsafeMutablePointer<guint>!, upper: UnsafeMutablePointer<guint>!) {
    gdk_keyval_convert_case(guint(symbol), lower, upper)

}




/// Converts a key name to a key value.
/// 
/// The names are the same as those in the
/// `gdk/gdkkeysyms.h` header file
/// but without the leading “GDK_KEY_”.
@inlinable public func keyvalFromName(keyvalName: UnsafePointer<CChar>!) -> Int {
    let rv = Int(gdk_keyval_from_name(keyvalName))
    return rv
}




/// Returns `true` if the given key value is in lower case.
@inlinable public func keyvalIsLower(keyval: Int) -> Bool {
    let rv = ((gdk_keyval_is_lower(guint(keyval))) != 0)
    return rv
}




/// Returns `true` if the given key value is in upper case.
@inlinable public func keyvalIsUpper(keyval: Int) -> Bool {
    let rv = ((gdk_keyval_is_upper(guint(keyval))) != 0)
    return rv
}




/// Converts a key value into a symbolic name.
/// 
/// The names are the same as those in the
/// `gdk/gdkkeysyms.h` header file
/// but without the leading “GDK_KEY_”.
@inlinable public func keyvalName(keyval: Int) -> String! {
    guard let rv = gdk_keyval_name(guint(keyval)).map({ String(cString: $0) }) else { return nil }
    return rv
}




/// Converts a key value to lower case, if applicable.
@inlinable public func keyvalToLower(keyval: Int) -> Int {
    let rv = Int(gdk_keyval_to_lower(guint(keyval)))
    return rv
}




/// Convert from a GDK key symbol to the corresponding ISO10646 (Unicode)
/// character.
/// 
/// Note that the conversion does not take the current locale
/// into consideration, which might be expected for particular
/// keyvals, such as `GDK_KEY_KP_Decimal`.
@inlinable public func keyvalToUnicode(keyval: Int) -> guint32 {
    let rv = gdk_keyval_to_unicode(guint(keyval))
    return rv
}




/// Converts a key value to upper case, if applicable.
@inlinable public func keyvalToUpper(keyval: Int) -> Int {
    let rv = Int(gdk_keyval_to_upper(guint(keyval)))
    return rv
}




/// Returns a paintable that has the given intrinsic size and draws nothing.
/// This is often useful for implementing the `GdkPaintableInterface.get_current_image``()`
/// virtual function when the paintable is in an incomplete state (like a
/// `GtkMediaStream` before receiving the first frame).
@inlinable public func paintableNewEmpty(intrinsicWidth: Int, intrinsicHeight: Int) -> PaintableRef! {
    guard let rv = PaintableRef(gconstpointer: gconstpointer(gdk_paintable_new_empty(gint(intrinsicWidth), gint(intrinsicHeight)))) else { return nil }
    return rv
}




/// Obtains a clip region which contains the areas where the given ranges
/// of text would be drawn. `x_origin` and `y_origin` are the top left point
/// to center the layout. `index_ranges` should contain
/// ranges of bytes in the layout’s text.
/// 
/// Note that the regions returned correspond to logical extents of the text
/// ranges, not ink extents. So the drawn layout may in fact touch areas out of
/// the clip region.  The clip region is mainly useful for highlightling parts
/// of text, such as when text is selected.
@inlinable public func pangoLayoutGetClipRegion<LayoutT: Pango.LayoutProtocol>(layout: LayoutT, xOrigin: Int, yOrigin: Int, indexRanges: UnsafePointer<gint>!, nRanges: Int) -> Cairo.RegionRef! {
    guard let rv = Cairo.RegionRef(gdk_pango_layout_get_clip_region(layout.layout_ptr, gint(xOrigin), gint(yOrigin), indexRanges, gint(nRanges))) else { return nil }
    return rv
}




/// Obtains a clip region which contains the areas where the given
/// ranges of text would be drawn. `x_origin` and `y_origin` are the top left
/// position of the layout. `index_ranges`
/// should contain ranges of bytes in the layout’s text. The clip
/// region will include space to the left or right of the line (to the
/// layout bounding box) if you have indexes above or below the indexes
/// contained inside the line. This is to draw the selection all the way
/// to the side of the layout. However, the clip region is in line coordinates,
/// not layout coordinates.
/// 
/// Note that the regions returned correspond to logical extents of the text
/// ranges, not ink extents. So the drawn line may in fact touch areas out of
/// the clip region.  The clip region is mainly useful for highlightling parts
/// of text, such as when text is selected.
@inlinable public func pangoLayoutLineGetClipRegion<LayoutLineT: Pango.LayoutLineProtocol>(line: LayoutLineT, xOrigin: Int, yOrigin: Int, indexRanges: UnsafePointer<CInt>!, nRanges: Int) -> Cairo.RegionRef! {
    guard let rv = Cairo.RegionRef(gdk_pango_layout_line_get_clip_region(line.layout_line_ptr, gint(xOrigin), gint(yOrigin), indexRanges, gint(nRanges))) else { return nil }
    return rv
}




/// Transfers image data from a `cairo_surface_t` and converts it to an `RGB(A)`
/// representation inside a `GdkPixbuf`. This allows you to efficiently read
/// individual pixels from cairo surfaces.
/// 
/// This function will create an RGB pixbuf with 8 bits per channel.
/// The pixbuf will contain an alpha channel if the `surface` contains one.
@inlinable public func pixbufGetFrom<SurfaceT: Cairo.SurfaceProtocol>(surface: SurfaceT, srcX: Int, srcY: Int, width: Int, height: Int) -> PixbufRef! {
    guard let rv = PixbufRef(gconstpointer: gconstpointer(gdk_pixbuf_get_from_surface(surface._ptr, gint(srcX), gint(srcY), gint(width), gint(height)))) else { return nil }
    return rv
}




/// Creates a new pixbuf from `texture`. This should generally not be used
/// in newly written code as later stages will almost certainly convert
/// the pixbuf back into a texture to draw it on screen.
@inlinable public func pixbufGetFrom<TextureT: TextureProtocol>(texture: TextureT) -> PixbufRef! {
    guard let rv = PixbufRef(gconstpointer: gconstpointer(gdk_pixbuf_get_from_texture(texture.texture_ptr))) else { return nil }
    return rv
}




/// Sets a list of backends that GDK should try to use.
/// 
/// This can be useful if your application does not
/// work with certain GDK backends.
/// 
/// By default, GDK tries all included backends.
/// 
/// For example,
/// (C Language Example):
/// ```C
/// gdk_set_allowed_backends ("wayland,quartz,*");
/// ```
/// instructs GDK to try the Wayland backend first,
/// followed by the Quartz backend, and then all
/// others.
/// 
/// If the `GDK_BACKEND` environment variable
/// is set, it determines what backends are tried in what
/// order, while still respecting the set of allowed backends
/// that are specified by this function.
/// 
/// The possible backend names are x11, win32, quartz,
/// broadway, wayland. You can also include a * in the
/// list to try all remaining backends.
/// 
/// This call must happen prior to `gdk_display_open()`,
/// `gtk_init()`, or `gtk_init_check()`
/// in order to take effect.
@inlinable public func setAllowed(backends: UnsafePointer<CChar>!) {
    gdk_set_allowed_backends(backends)

}




@inlinable public func toplevelSizeGetType() -> GType {
    let rv = gdk_toplevel_size_get_type()
    return rv
}




/// Convert from a ISO10646 character to a key symbol.
@inlinable public func unicodeToKeyval(wc: guint32) -> Int {
    let rv = Int(gdk_unicode_to_keyval(wc))
    return rv
}




@inlinable public func vulkanErrorQuark() -> GQuark {
    let rv = gdk_vulkan_error_quark()
    return rv
}


