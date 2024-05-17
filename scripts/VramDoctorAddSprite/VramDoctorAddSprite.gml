/// @func VramDoctorAddSprite(value)
/// @param {Asset.GMSprite} value
/// feather ignore all
function VramDoctorAddSprite(_value) {
	static _global = __VramDoctorGlobal();
	array_push(_global.dynamicSprites, {
		sprite: _value,
		images: sprite_get_number(_value),
		textures: array_map(sprite_get_info(_value).frames, function(_value) {
			return _value.texture;
		})
	});	
}