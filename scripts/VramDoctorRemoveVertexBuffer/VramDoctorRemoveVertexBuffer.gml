/// @func VramDoctorRemoveVertexBuffer(value)
/// @param {Id.VertexBuffer} value
/// feather ignore all
function VramDoctorRemoveVertexBuffer(_value) {
	static _global = __VramDoctorGlobal();
	array_delete(_global.vbos, array_get_index(_global.vbos, _value), 1);
}