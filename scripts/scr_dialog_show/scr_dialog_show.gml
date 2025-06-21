/// scr_dialog_show("sex_menu")
function scr_dialog_show(_node)
{
    if (!variable_struct_exists(global.menuData, _node)) exit;

    var fx = obj_player.x - camera_get_view_x(view_camera[0]);
    var fy = obj_player.y - camera_get_view_y(view_camera[0]) - 64;

    scr_openMenu(fx, fy, other.id);   // other = サキュバス

    // 会話ウィンドウ生成
    var d = instance_create_layer(fx, fy, "Instances", obj_dialogue);
    d.current_dialogue = "こんにちは、サキュバスです。";
    d.show_dialog = true;
}
