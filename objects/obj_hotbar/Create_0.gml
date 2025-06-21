/// obj_hotbar – Create
bar_w   = 292;                 // 全体幅 (= 32px × 8スロット + 枠余白)
bar_h   = 32;
slot_px = 36;                  // スロット横幅（枠含む）
sx      = display_get_gui_width()  - bar_w;
sy      = display_get_gui_height() - bar_h - 14;   // 14px だけ上へ

// マウス選択用ヒットボックス（配列に保持）
slot_rects = array_create(global.HOTBAR_SIZE);
for (var i=0; i<global.HOTBAR_SIZE; i++)
{
    var rx1 = sx + i*slot_px;
    var ry1 = sy;
    var rx2 = rx1 + 32;
    var ry2 = sy + 32;
    slot_rects[i] = [rx1,ry1,rx2,ry2];
}
