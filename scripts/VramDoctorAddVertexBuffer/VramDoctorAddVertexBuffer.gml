/// @func VramDoctorAddVertexbuffer(value)
/// @param {Id.VertexBuffer} value
/// feather ignore all
function VramDoctorAddVertexBuffer(_value) {
	static _global = __VramDoctorGlobal();
	array_push(_global.vbos, _value);	
}