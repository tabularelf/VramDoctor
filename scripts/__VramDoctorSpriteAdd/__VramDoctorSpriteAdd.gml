/// feather ignore all
/// @ignore
function __VramDoctorSpriteAdd(_filename, _num, _removeback, _smooth, _xorigin, _yorigin) {
	static _global = __VramDoctorGlobal();
	var _sprite = __vram_doctor_sprite_add__(_filename, _num, _removeback, _smooth, _xorigin, _yorigin);
	VramDoctorAddSprite(_sprite);
	return _sprite;
}