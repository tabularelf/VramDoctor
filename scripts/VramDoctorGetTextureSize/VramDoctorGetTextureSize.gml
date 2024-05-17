/// @func VramDoctorGetTextureSize()
/// feather ignore all
function VramDoctorGetTextureSize() {
	static _global = __VramDoctorGlobal();
	return _global.currentSpriteSize + _global.currentSurfaceSize;
}