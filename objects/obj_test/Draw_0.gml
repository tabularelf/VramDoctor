draw_text(8, 32, 
	$"Max Total Size: {byteConverter(VramDoctorGetTotalSize())}\n"+
	$"Max Sprite Texture Size: {byteConverter(VramDoctorGetSpriteTextureSize())}\n"+
	$"Max Surface Texture Size: {byteConverter(VramDoctorGetSurfaceTextureSize())}\n"+
	$"Max Total Texture Size: {byteConverter(VramDoctorGetTextureSize())}\n"+
	$"Max VBO Size: {byteConverter(VramDoctorGetVBOSize())}\n"+
	$"Max Usage Against VRAM/SharedMemory: {byteConverter(VramDoctorGetTotalSize())}\\{byteConverter(vram)}\\{byteConverter(vramTotal)}"
);