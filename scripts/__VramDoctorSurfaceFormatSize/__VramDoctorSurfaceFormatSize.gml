/// feather ignore all
/// @ignore
function __VramDoctorSurfaceFormatSize(_format) {
	static _canUseFormat = (function() {
		try {
			surface_format_is_supported(surface_rgba8unorm);
			return true;
		} catch(_) {
			return false;	
		}
	})();
	
	if (!_canUseFormat) {
		return 4;	
	}
	
	var _size = 0;
	switch(_format) {
		case surface_rgba8unorm: _size = 4; break;
		case surface_r8unorm: _size = 1; break;
		case surface_rg8unorm: _size = 2; break;
		case surface_rgba4unorm: _size = 2; break;
		case surface_rgba16float: _size = 8; break;
		case surface_r16float: _size = 2; break;
		case surface_rgba32float: _size = 16; break;
		case surface_r32float: _size = 4; break;
	}
	return _size;
}