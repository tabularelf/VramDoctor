/// feather ignore all
/// @ignore
function __VramDoctorSurfaceCreate(_width, _height, _format = surface_rgba8unorm) {
	static _global = __VramDoctorGlobal();
	var _surface = __vram_doctor_surface_create__(_width, _height, _format);
	VramDoctorAddSurface(_surface);
	return _surface;
}
