// obj_dialogue – Draw GUI
if (show_dialog) {
    draw_set_color(c_black);
    draw_rectangle(50, room_height - 150, room_width - 50, room_height - 50, false);
    draw_set_color(c_white);
    draw_text_ext(60, room_height - 140, current_dialogue, room_width - 120, 20);
}
