/// obj_dialogueManager – Step   ★全文
if (global.isInDialog && mouse_check_button_pressed(mb_left))   // :contentReference[oaicite:4]{index=4}
{
    global.dialog_index += 1;

    // 行を送り切ったら会話終了
    if (global.dialog_index >= array_length(global.dialog_lines))
    {
        global.isInDialog = false;

        // サキュバス会話ならロック解除
        if (instance_exists(global.dialog_target))
        {
            with (global.dialog_target)
                if (variable_instance_exists(id,"talking_to_player"))   // :contentReference[oaicite:5]{index=5}
                    talking_to_player = false;
        }
    }
}
