draw_text(8, 32, 
	$"Max Total Size: {byteConverter(VramDoctorGetTotalSize())}\n"+
	$"Max Sprite Texture Size: {byteConverter(VramDoctorGetSpriteTextureSize())}\n"+
	$"Max Surface Texture Size: {byteConverter(VramDoctorGetSurfaceTextureSize())}\n"+
	$"Max Total Texture Size: {byteConverter(VramDoctorGetTextureSize())}\n"+
	$"Max VBO Size: {byteConverter(VramDoctorGetVBOSize())}\n"+
	$"Max Usage Against VRAM/SharedMemory: {byteConverter(VramDoctorGetTotalSize())}\\{byteConverter(vram)}\\{byteConverter(vramTotal)}"
);


draw_text(8, 256, 
	@"Controls:
	Prefetch: Mouse Left
	Clear: Mouse Right
	Toggle Application Surface: Space
	Toggle Surface Depth: Control
	"
);


if (texture_is_ready(sprite_get_info(spr_logo).frames[0].texture)) {
	draw_sprite(spr_logo, current_time / 500, 618, 0);	
}