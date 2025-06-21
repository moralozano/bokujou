/// obj_hotbar – Step イベント

// Qキー：左に移動
if (keyboard_check_pressed(ord("Q"))) {
    global.hotbar_sel = (global.hotbar_sel + global.HOTBAR_LEFT_SIZE - 1)
                        mod global.HOTBAR_LEFT_SIZE;
}

// Rキー：右に移動
if (keyboard_check_pressed(ord("R"))) {
    global.hotbar_sel = (global.hotbar_sel + 1)
                        mod global.HOTBAR_LEFT_SIZE;
}

// スペースキー：選択中スロットを発動
if (keyboard_check_pressed(global.KEY_TALK)) {
    var sel = global.hotbar_sel;
    var item_id = global.hotbar_left[sel];
    if (item_id >= 0 && variable_struct_exists(global.itemDB[item_id], "fn")) {
        global.itemDB[item_id].fn(id);
    }
}
