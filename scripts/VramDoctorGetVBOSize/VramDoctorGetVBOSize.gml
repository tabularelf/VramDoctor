/// @func VramDoctorGetVBOSize()
/// feather ignore all
function VramDoctorGetVBOSize() {
	static _global = __VramDoctorGlobal();
	return _global.currentVBOSize;
}