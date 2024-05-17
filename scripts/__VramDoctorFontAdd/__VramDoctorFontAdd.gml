/// feather ignore all
/// @ignore
function __VramDoctorFontAdd(_name, _size, _bold, _italic, _first, _last) {
	static _global = __VramDoctorGlobal();
	var _font = __vram_doctor_font_add__(_name, _size, _bold, _italic, _first, _last);
	if (font_exists(_font)) {
		VramDoctorAddFont(_font);
	}
	return _font;
}