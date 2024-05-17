show_debug_overlay(true);
currentSize = 0;

surf = surface_create(128, 128); 
////surface_resize(application_surface, 8192, 8192)
//_global = __VramDoctorGlobal();
sprite = sprite_add("spr_soldier.png", 4, false, false, 0, 0);
////repeat(1024) {sprite_prefetch(sprite_add("spr_soldier.png", 4, false, false, 0, 0));}
font = undefined;
vertex_format_begin();
vertex_format_add_position();
format = vertex_format_end();
vertex = vertex_create_buffer_ext(0);
vertex_begin(vertex, format);
repeat(1) vertex_position(vertex, 0, 0);
vertex_end(vertex);
vertex_freeze(vertex);
var _info = os_get_info();
vram = _info[? "video_adapter_dedicatedvideomemory"];
vramTotal = vram + _info[? "video_adapter_sharedsystemmemory"];
ds_map_destroy(_info);
//repeat(10) {surface_set_target(surface_create(8192*2, 8192*2)); surface_reset_target();}

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


////show_message(json_stringify(vertex_format_get_info(format), true));
//vertex_begin(vertex, format);
//vertex_position(vertex, 0, 0);
//vertex_end(vertex);
//show_message(vertex_get_buffer_size(vertex));