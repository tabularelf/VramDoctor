/// @func VramDoctorGetSpriteTextureSize()
/// feather ignore all
function VramDoctorGetSpriteTextureSize() {
	static _global = __VramDoctorGlobal();
	return _global.currentSpriteSize;
}