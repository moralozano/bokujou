/// obj_dialogWin – Draw GUI
if (!initialized) exit;                                  // 初期化前は描画しない

// ウィンドウ本体（枠画像などがあればここで draw_sprite）

// 1行目：テキスト描画安全ガード
var max_page = array_length(text_lines) - 1;
var cur_page = clamp(page, 0, max_page);                  // ★安全化
draw_text_ext(x + 80, y + 8, text_lines[cur_page], -1, 330);

// 2行目以降に他要素（顔グラ・選択肢ボタンなど）を描画
