/// obj_speechBubble – Draw GUI

if (!instance_exists(owner_id)) {
    instance_destroy();
    return;
}
depth = -100;  // GUIレイヤー内でも「前」に描画されやすく

// GUI 座標系で文字描画
draw_set_color(c_white);
draw_text(x, y, msg_text);
