/// feather ignore all
/// @ignore
function __VramDoctorTick() {
	static _global = __VramDoctorGlobal();	
	_global.currentSize = 0;
	_global.currentVBOSize = 0;
	_global.currentSurfaceSize = 0;
	_global.currentSpriteSize = 0;
	var _size = 0;
	var _applicationSurfaceUsed = application_surface_is_enabled();
	var _applicationSurfaceFound = false;
	
	// Surfaces
	for(var _i = 0, _len = array_length(_global.surfaces); _i < _len; ++_i) {
		if (surface_exists(_global.surfaces[_i].surface)) {
			if (_applicationSurfaceUsed) && (application_surface == _global.surfaces[_i].surface) {
				_applicationSurfaceFound = true;	
			}
			var _texture = surface_get_texture(_global.surfaces[_i].surface);
			if (texture_is_ready(_texture)) {
				_size = surface_get_width(_global.surfaces[_i].surface)*
					surface_get_height(_global.surfaces[_i].surface)*
					__VramDoctorSurfaceFormatSize(surface_get_format(_global.surfaces[_i].surface))*
					(_global.surfaces[_i].depthDisabled ? 1 : 2);
					
				_global.currentSize += _size;
				_global.currentSurfaceSize += _size;
			}
		} else {
			array_delete(_global.surfaces, _i, 1);
			--_i;
			--_len;
		}
	}
	
	if (!_applicationSurfaceFound) {
		if (_applicationSurfaceUsed) {
			array_push(_global.surfaces, {
				surface: application_surface,
				depthDisabled: surface_get_depth_disable()
			});	
			
		_size = surface_get_width(application_surface)*
			surface_get_height(application_surface)*
			__VramDoctorSurfaceFormatSize(surface_get_format(application_surface))*
			(surface_get_depth_disable() ? 1 : 2);
			
		_global.currentSize += _size;
		_global.currentSurfaceSize += _size;
		}
	}
	
	// Texture Pages (Built in)
	for(var _i = 0, _len = array_length(_global.texturePages); _i < _len; ++_i) {
		if (texture_is_ready(_global.texturePages[_i].texture)) {
			_size = _global.texturePages[_i].maxWidth * _global.texturePages[_i].maxHeight * 4;
			_global.currentSpriteSize += _size;
			_global.currentSize += _size;	
		} 
	}
	
	// Fonts
	for(var _i = 0, _len = array_length(_global.fonts); _i < _len; ++_i) {
		if (font_exists(_global.fonts[_i].font)) {
			if (texture_is_ready(_global.fonts[_i].texture)) {
				_size = font_texture_page_size*font_texture_page_size*4;
				_global.currentSpriteSize += _size;
				_global.currentSize += _size;	
			} 
		} else {
			array_delete(_global.fonts, _i, 1);
			--_i;
			--_len;
		}
	}
	
	// Dynamically added sprites
	for(var _i = 0, _len = array_length(_global.dynamicSprites); _i < _len; ++_i) {
		if (sprite_exists(_global.dynamicSprites[_i].sprite)) {
			var _width = sprite_get_width(_global.dynamicSprites[_i].sprite);
			var _height = sprite_get_height(_global.dynamicSprites[_i].sprite);
			for(var _j = 0, _len2 = array_length(_global.dynamicSprites[_i].textures); _j < _len2; ++_j) {
				if (texture_is_ready(_global.dynamicSprites[_i].textures[_j])) {
					_size = _width * _height * 4;
					_global.currentSpriteSize += _size;
					_global.currentSize += _size;	
				}
			}
		}
	}
	
	// Vertex buffers
	for(var _i = 0, _len = array_length(_global.vbos); _i < _len; ++_i) {
		_size = vertex_get_buffer_size(_global.vbos[_i]);
		_global.currentSize += _size;
		_global.currentVBOSize += _size;
	}
}
