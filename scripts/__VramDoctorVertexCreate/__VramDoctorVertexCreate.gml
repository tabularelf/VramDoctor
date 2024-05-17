/// feather ignore all
/// @ignore
function __VramDoctorVertexCreate(_size = undefined) {
	static _global = __VramDoctorGlobal();
	var _vbuff = _size == undefined ? __vram_doctor_vertex_create_buffer__() : __vram_doctor_vertex_create_buffer_ext__(_size);
	VramDoctorAddVertexBuffer(_vbuff);
	return _vbuff;
}