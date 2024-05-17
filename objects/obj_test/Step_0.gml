if (keyboard_check_released(vk_space)) {
	
	application_surface_enable(!application_surface_is_enabled());
}

if (keyboard_check_pressed(vk_control)) {
	surface_depth_disable(!surface_get_depth_disable());	
}

if (mouse_check_button_pressed(mb_right)) {
	draw_texture_flush();
}