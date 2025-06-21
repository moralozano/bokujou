/// obj_hotbar – Draw GUI End イベント

var guiW = display_get_gui_width();
var guiH = display_get_gui_height();
var slotW = 40;
var slotH = 40;
var baseX_L = 16;
var baseY_L = guiH - slotH - 16;
var baseX_R = guiW - (slotW + 4) * global.HOTBAR_RIGHT_SIZE - 16;
var baseY_R = baseY_L;

for (var side = 0; side < 2; side++) {
    var count = (side == 0) ? global.HOTBAR_LEFT_SIZE : global.HOTBAR_RIGHT_SIZE;
    var baseX = (side == 0) ? baseX_L : baseX_R;

    for (var i = 0; i < count; i++) {
        var posX = baseX + i * (slotW + 4);
        var posY = baseY_L;

        draw_set_color(side == 0 && i == global.hotbar_sel ? c_yellow : c_white);
        draw_rectangle(posX, posY, posX + slotW, posY + slotH, false);

        var itemID = (side == 0) ? global.hotbar_left[i] : global.hotbar_right[i];
        if (itemID >= 0) {
            draw_sprite(global.itemDB[itemID].spr, 0, posX + 4, posY + 4);
        }

        if (mouse_check_button_pressed(mb_left)
            && mouse_x >= posX && mouse_x < posX + slotW
            && mouse_y >= posY && mouse_y < posY + slotH) {
            if (side == 0) global.hotbar_sel = i;
            else global.hotbar_right_sel = i;
        }
    }
}
