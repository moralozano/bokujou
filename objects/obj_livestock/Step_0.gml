var near = (distance_to_object(obj_player) < 32);

// クリックで吹き出し＋主人公ウィンドウ開始（１回だけ）
if (!talking_to_player && near && mouse_check_button_pressed(mb_left))
{
    var bub = instance_create_layer(x, y-32, "GUI", obj_speechBubble);
    bub.owner_id = id;
    bub.msg_text = "はぁはぁ…♡";

    global.isInDialog    = true;
    global.dialog_target = id;
    global.dialogue		 = ["よしよし…可愛いな"];
    global.dialog_index  = 0;

    // ★ 会話ウィンドウ生成
    var d = instance_create_layer(x, y + 48, "Instances", obj_dialogue);
    d.current_dialogue = global.dialogue[global.dialog_index];
    d.show_dialog = true;

    talking_to_player = true;
}

// ウィンドウが閉じたら吹き出しも終了
if (!global.isInDialog && talking_to_player)
{
    talking_to_player = false;
    with (obj_speechBubble)
        if (owner_id == other.id) instance_destroy();
}
