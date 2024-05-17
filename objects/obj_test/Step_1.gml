if (mouse_check_button(mb_left)) && !is_mouse_over_debug_overlay() {
	if (!surface_exists(surf)) surf = surface_create(128, 128); 
	surface_set_target(surf);
	surface_reset_target();
	sprite_prefetch(sprite);
	sprite_prefetch(huh_cat);
	sprite_prefetch(IMG_2288);
	texture_prefetch("Default");
}

if (keyboard_check_released(vk_space)) {
	draw_texture_flush();
}