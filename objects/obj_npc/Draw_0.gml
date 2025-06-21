/// obj_livestock – Draw
draw_self();
var w = affection / 100 * 40;
draw_set_color(c_white);
draw_rectangle(x-20, y-32, x+20, y-28, false);
draw_set_color(c_red);
draw_rectangle(x-20, y-32, x-20 + w, y-28, false);
draw_set_color(c_white);
draw_text(x-10, y-44, string(affection) + "%");
