/// @func VramDoctorUpdate
/// feather ignore all
function VramDoctorUpdate() {
	static _global = __VramDoctorGlobal();
	if (!_global.autoTick) {
		show_error("Vram Doctor: Autotick has been disabled!", true);
	}
	__VramDoctorTick();	
}
