if (!global.isInDialog) {
    if point_distance(x, y, obj_player.x, obj_player.y) < 32 {
        if mouse_check_button_pressed(global.KEY_INTERACT) {
            global.isInDialog    = true;
            global.dialog_lines  = dialog_lines;
            global.dialog_index  = 0;
            global.dialog_target = id;
        }
    }
}
