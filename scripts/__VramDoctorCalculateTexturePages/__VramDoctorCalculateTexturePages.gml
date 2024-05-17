/// feather ignore all
/// @ignore
function __VramDoctorCalculateTexturePages() {
	static _global = __VramDoctorGlobal();
	var _sprites = asset_get_ids(asset_sprite);
	var _i = 0;
	var _size = 0;
	var _results = [];
	repeat(array_length(_sprites)) {
		var _sprite = _sprites[_i];
		
		var _info = sprite_get_info(_sprite);
		if (_info.type == 1) {
			show_debug_message($"VramDoctor: Cannot interpret size of SWF file {sprite_get_name(_sprites[_i])}! Skipping!");	
			++_i;
			continue;
		}
		
		if (_info.type == 2) {
			var _j = 0;
			repeat(array_length(_info.atlas_textures)) {
				array_push(_results, {
					maxWidth: floor(1 / texture_get_texel_width(_info.atlas_textures[_j])),
					maxHeight: floor(1 / texture_get_texel_height(_info.atlas_textures[_j])),
					texture: _info.atlas_textures[_j],
				});
				++_j;
			}
			++_i;
			continue;
		}
		
		if (_info.num_subimages > 0) {
			var _j = 0;
			repeat(_info.num_subimages) {
				var _currentTexture = _info.frames[_j].texture;
				var _found = false;
				var _k = 0;
				repeat(array_length(_results)) {
					if (_results[_k].texture == _currentTexture) {
						_found = true;
						break;	
					}
					++_k;
				}
				if (!_found) {
					array_push(_results, {
						maxWidth: floor(1 / texture_get_texel_width(_currentTexture)),	
						maxHeight: floor(1 / texture_get_texel_height(_currentTexture)),
						texture: _currentTexture
					});
				}
				++_j;
			}
		}
		++_i;
	}
	return _results;
}