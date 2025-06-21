/// obj_dialogueManager – Draw GUI   ★全文
var ww = display_get_gui_width();
var wh = display_get_gui_height();

if (global.isInDialog)
{
    // 背景オーバーレイ
    draw_set_color(c_black); draw_set_alpha(0.6);
    draw_rectangle(0,0,ww,wh,false);     // GUI レイヤ描画 :contentReference[oaicite:6]{index=6}
    draw_set_alpha(1);

    // 会話パネル
    var hh=96, wy=wh-hh;
    draw_set_color(c_white);
    draw_rectangle(16,wy+16,ww-16,wh-16,false);

    // 立ち絵（portrait_spr が存在すれば描画）
    if (instance_exists(global.dialog_target))
    {
        if (variable_instance_exists(global.dialog_target,"portrait_spr"))   // :contentReference[oaicite:7]{index=7}
        {
            var spr = global.dialog_target.portrait_spr;
            if (spr!=-1) draw_sprite(spr,0,ww-64,wy+16);
        }
    }

    // テキスト折り返し描画
    draw_set_font(font_dialog);
    draw_set_color(c_black);
    var txt = global.dialog_lines[global.dialog_index];
    draw_text_ext(24,wy+24,txt, ww-64-48, string_height("A")*4);          // :contentReference[oaicite:8]{index=8}
}
