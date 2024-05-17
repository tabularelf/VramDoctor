/// feather ignore all
/// @ignore
function __VramDoctorVertexDelete(_vbuff) {
	static _global = __VramDoctorGlobal();
	VramDoctorRemoveVertexBuffer(_vbuff);
	__vram_doctor_vertex_delete_buffer__(_vbuff);
}
	