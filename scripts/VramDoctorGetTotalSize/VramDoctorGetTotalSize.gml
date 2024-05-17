/// @func VramDoctorGetTotalSize()
/// feather ignore all
function VramDoctorGetTotalSize() {
	static _global = __VramDoctorGlobal();
	return _global.currentSize;
}