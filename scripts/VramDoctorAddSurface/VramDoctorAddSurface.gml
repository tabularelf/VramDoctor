/// @func VramDoctorAddSurface(value)
/// @param {Id.Surface} value
/// feather ignore all
function VramDoctorAddSurface(_value) {
	static _global = __VramDoctorGlobal();
	array_push(_global.surfaces, {
		surface: _value,
		depthDisabled: surface_get_depth_disable()
	});	
}