if (!initialized) exit;

// ===== ページ送り =====
if (mouse_check_button_pressed(mb_left)
 || keyboard_check_pressed(global.KEY_TALK))
{
    page = clamp(page + 1, 0, array_length(text_lines) - 1);
}

// ===== 選択肢生成 =====
if (page == array_length(text_lines) - 1 && !choice_spawned)
{
    if (array_length(choices) == 0) closing_ready = true;
    else
    {
        choice_spawned = true;
        var cy = y + 56;

        for (var i = 0; i < array_length(choices); i++)
        {
            var b = instance_create_layer(x + 120, cy + i*36, "GUI", obj_choiceBtn);
            b.label        = choices[i];
            b.choice_index = i;
            b.parent_dialog= id;
            b.target_id    = speaker.id;
        }
    }
}

// ===== 自動クローズ =====
if (closing_ready
    && (!choice_spawned || !instance_exists(obj_choiceBtn)))
{
    global.isTalking = false;
    if (speaker != noone) with (speaker) talking_to_player = false;
    instance_destroy();
}

// ===== ESC / 右クリック終了 =====
if (keyboard_check_pressed(vk_escape)
 || mouse_check_button_pressed(mb_right))
{
    global.isTalking = false;
    if (speaker != noone) with (speaker) talking_to_player = false;
    instance_destroy();
}
