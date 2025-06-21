var mx = device_mouse_x_to_gui(0);
var my = device_mouse_y_to_gui(0);
hover = point_in_rectangle(mx,my,x-48,y-16,x+48,y+16);

if (hover && mouse_check_button_pressed(mb_left))
{
    with (obj_player)
        scr_performSexEvent(other.target_id, other.act_key);

    with (parent_menu) instance_destroy();
    instance_destroy();
}

if (mouse_check_button_pressed(mb_right))
    with (parent_menu) instance_destroy();
