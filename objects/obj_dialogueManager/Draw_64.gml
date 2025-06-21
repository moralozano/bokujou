if (visible && dialogue_owner != noone) {
    var gui_w = display_get_gui_width();
    var gui_h = display_get_gui_height();

    // 🔹1. まず立ち絵を奥側に描画（背景より後ろ）
    if (variable_instance_exists(dialogue_owner, "portrait_sprite") &&
        sprite_exists(dialogue_owner.portrait_sprite)) {

        // 表示位置と倍率は解像度に応じて調整可能
        var portrait_x = gui_w - 200;
        var portrait_y = gui_h - 280;
        draw_sprite_ext(dialogue_owner.portrait_sprite, 0, portrait_x, portrait_y, 1.0, 1.0, 0, c_white, 1);
    }

    // 🔹2. 会話ウィンドウを画面下部に描画（常に画面幅いっぱい）
    draw_sprite_stretched(spr_dialogBG, 0, 0, gui_h - 120, gui_w, 120);

    // 🔹3. セリフテキストの描画（背景の上に重ねる）
    if (variable_instance_exists(dialogue_owner, "dialogue") &&
        array_length(dialogue_owner.dialogue) > dialogue_owner.dialogue_index) {
        
        draw_set_font(font_dialog);
        draw_set_color(c_black);
        draw_text(32, gui_h - 100, dialogue_owner.dialogue[dialogue_owner.dialogue_index]);
    } else {
        draw_set_color(c_red);
        draw_text(32, gui_h - 100, "（セリフ未定義）");
    }
}
