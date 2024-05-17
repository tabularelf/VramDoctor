/// @func VramDoctorGetTexturePageSize()
/// feather ignore all
function VramDoctorGetTexturePageSize() {
	static _global = __VramDoctorGlobal();
	return _global.currentSpriteSize;
}