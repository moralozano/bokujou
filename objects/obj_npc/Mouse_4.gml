/// obj_npc - Mouse Left Pressed

if (!global.isInDialog && point_distance(x, y, obj_player.x, obj_player.y) < 32) {
    global.isInDialog    = true;
    global.dialog_lines  = dialog_lines;
    global.dialog_index  = 0;
    global.dialog_target = id;
}
show_debug_message("Clicked NPC " + string(id));