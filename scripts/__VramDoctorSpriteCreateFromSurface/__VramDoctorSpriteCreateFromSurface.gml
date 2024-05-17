/// feather ignore all
/// @ignore
function __VramDoctorSpriteCreateFromSurface(_surfId, _x, _y, _w, _h, _removeback, _smooth, _xorigin, _yorigin) {
	static _global = __VramDoctorGlobal();
	var _sprite = __vram_doctor_sprite_create_from_surface__(_surfId, _x, _y, _w, _h, _removeback, _smooth, _xorigin, _yorigin);	
	array_push(_global.dynamicSprites, _sprite);
	return _sprite;
}