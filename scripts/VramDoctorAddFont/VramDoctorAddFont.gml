/// @func VramDoctorAddFont(value)
/// @param {Asset.GMFont} value
/// feather ignore all
function VramDoctorAddFont(_value) {
	static _global = __VramDoctorGlobal();
	array_push(_global.fonts, {
		font: _value,
		texture: font_get_info(_value).texture
	});	
}