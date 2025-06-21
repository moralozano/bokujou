hover = position_meeting(device_mouse_x_to_gui(0),
                         device_mouse_y_to_gui(0), id);

if (hover && mouse_check_button_pressed(mb_left))
{
    if (choice_index < 0) exit;                // ★安全ガード

    with (parent_dialog)
    {
        if (on_choice_fn != noone)
            on_choice_fn(choice_index);
        closing_ready = true;
    }
    instance_destroy();
}
