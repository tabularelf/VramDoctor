/// @func VramDoctorSetAutoTick(value)
/// @param {Bool} value
/// feather ignore all
function VramDoctorSetAutoTick(_value) {
	static _global = __VramDoctorGlobal();
	if (_value) {
		if (time_source_get_state(_global.timeSource) != time_source_state_stopped) {
			time_source_stop(_global.timeSource);
		}
	} else {
		if (time_source_get_state(_global.timeSource) != time_source_state_active) {
			time_source_start(_global.timeSource);
		}	
	}
	
	_global.autoTick = _value;
}