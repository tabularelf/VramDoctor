/*
	NOTE: This can be removed if you prefer managing vram tracking at your own pace.
	This file is present at the top for easier navigation.
	As these macros replace a bunch of core functions for Vram Doctors own wrappers.
	If you prefer to manage these yourself, please remove these macros.
*/


#macro vertex_create_buffer_from_buffer_ext __VramDoctorVertexCreateFromBuffer
#macro font_add __VramDoctorFontAdd
#macro surface_create __VramDoctorSurfaceCreate
#macro sprite_add __VramDoctorSpriteAdd
#macro sprite_create_from_surface VramDoctorSpriteCreateFromSurface
#macro vertex_delete_buffer __VramDoctorVertexDelete
#macro vertex_freeze __VramDoctorVertexFreeze