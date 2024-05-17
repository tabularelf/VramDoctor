/// @func VramDoctorGetSurfaceTextureSize()
/// feather ignore all
function VramDoctorGetSurfaceTextureSize() {
	static _global = __VramDoctorGlobal();
	return _global.currentSurfaceSize;
}