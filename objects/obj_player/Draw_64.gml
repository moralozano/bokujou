// obj_player – Draw GUI

// スタミナバー描画
var x1 = 20, y1 = 20, w = 200, h = 20;
var pct = stamina / max_stamina;
draw_set_color(c_black);
draw_rectangle(x1, y1, x1 + w, y1 + h, false);
draw_set_color(c_blue);
draw_rectangle(x1, y1, x1 + w * pct, y1 + h, false);
draw_set_color(c_white);
draw_text(x1, y1 - 16, "体力: " + string(stamina));

// フェード画面
if (is_fading) {
    draw_set_alpha(fade_alpha);
    draw_set_color(c_black);
    draw_rectangle(0, 0, room_width, room_height, true);
    draw_set_alpha(1);
}
