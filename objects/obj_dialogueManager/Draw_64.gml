if (visible && dialogue_owner != noone) {
    // 会話ウィンドウ（背景）
    draw_sprite(spr_dialogBG, 0, 64, 400);

    // セリフの描画（変数が存在するか、配列内のインデックスが有効か確認）
    if (variable_instance_exists(dialogue_owner, "dialogue") &&
        array_length(dialogue_owner.dialogue) > dialogue_owner.dialogue_index) {
        
        draw_set_font(font_dialog);
        draw_set_color(c_black);
        draw_text(96, 420, dialogue_owner.dialogue[dialogue_owner.dialogue_index]);
    } else {
        // セーフティ表示（必要であれば）
        draw_set_color(c_red);
        draw_text(96, 420, "（セリフ未定義）");
    }

    // 立ち絵表示（存在するか確認）
    if (variable_instance_exists(dialogue_owner, "spr_npc_portrait01") &&
        sprite_exists(dialogue_owner.spr_npc_portrait01)) {
        
        draw_sprite(dialogue_owner.spr_npc_portrait01, 0, 600, 240);
    }
}
