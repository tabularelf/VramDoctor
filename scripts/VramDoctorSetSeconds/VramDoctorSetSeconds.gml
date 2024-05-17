/// @func VramDoctorSetSeconds(seconds)
/// @param {Real} seconds
/// feather ignore all
function VramDoctorSetSeconds(_value) {
	static _global = __VramDoctorGlobal();
	time_source_reconfigure(_global.timeSource, _value, time_source_units_seconds, __VramDoctorTick, [], -1);
	time_source_start(_global.timeSource);
}