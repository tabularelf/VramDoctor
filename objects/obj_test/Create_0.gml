//show_debug_overlay(true);
currentSize = 0;

surf = surface_create(128, 128); 
vertex_format_begin();
vertex_format_add_position();
format = vertex_format_end();
vertex = vertex_create_buffer_ext(0);
vertex_begin(vertex, format);
repeat(1) vertex_position(vertex, 0, 0);
vertex_end(vertex);
vertex_freeze(vertex);
vram = 0;
vramTotal = 0;
if (os_type == os_windows) {
	var _info = os_get_info();
	vram = _info[? "video_adapter_dedicatedvideomemory"];
	vramTotal = vram + _info[? "video_adapter_sharedsystemmemory"];
	ds_map_destroy(_info);
}

byteConverter = function(_num) {
	static _nums = [
		"B",
		"KB",
		"MB",
		"GB"
	];
	var _i = 0;
	while(_num > 1000) {
		_num /= 1000;
		++_i;
	}
	
	return string(_num) + _nums[_i];
}