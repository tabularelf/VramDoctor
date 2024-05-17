/// feather ignore all
/// @ignore
#macro __VRAM_DOCTOR_VERSION "1.0.0"
#macro __VRAM_DOCTOR_CREDITS "@TabularElf (https://tabelf.link/)"

function __VramDoctorGlobal() {
	static _init = false;
	static _global = new (function() constructor {
			show_debug_message($"Vram Doctor {__VRAM_DOCTOR_VERSION} initalized! Created by {__VRAM_DOCTOR_CREDITS}");
			surfaces = [];
			vbos = [];
			fonts = [];
			texturePages = undefined;
			dynamicSprites = [];
			currentSize = 0;
			currentVBOSize = 0;
			currentSurfaceSize = 0;
			currentSpriteSize = 0;
			timeSource = time_source_create(time_source_global, 0.01, time_source_units_seconds, __VramDoctorTick, [], -1);
			if (os_browser == browser_not_a_browser) {	
				time_source_start(timeSource);
			}
		})();
		if (!_init) {
			_init = true;
			if (os_browser == browser_not_a_browser) {
				_global.texturePages = __VramDoctorCalculateTexturePages();
			}
	}
	return _global;
}
__VramDoctorGlobal();