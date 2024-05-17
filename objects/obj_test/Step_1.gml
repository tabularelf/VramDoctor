if (mouse_check_button(mb_left)) && !is_mouse_over_debug_overlay() {
	if (!surface_exists(surf)) surf = surface_create(128, 128); 
	surface_set_target(surf);
	surface_reset_target();
	sprite_prefetch(spr_logo);
	texture_prefetch("Default");
}

