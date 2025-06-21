// obj_dialogue – Step
show_debug_message("dialogue step running");
if (show_dialog) {
    show_debug_message("waiting for input");
    if (keyboard_check_pressed(vk_anykey) || mouse_check_button_pressed(mb_any)) {
        show_debug_message("dialogue closed");
        show_dialog = false;
		global.isInDialog = false;
        instance_destroy();
    }
}
