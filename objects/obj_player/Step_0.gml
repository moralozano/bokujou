// 💬 会話中・ロック中は移動禁止
if (global.isTalking) {
    show_debug_message("会話中：移動停止");
    exit;
}

var lock = false;
with (obj_livestock) if (talking_to_player) lock = true;

if (!lock) {
    move_player(); // ← 必要なときだけ移動処理を呼び出す
}
// 🕹 WASD 移動
function move_player() {
    var mv = 2;
    var mx = keyboard_check(ord("D")) - keyboard_check(ord("A"));
    var my = keyboard_check(ord("S")) - keyboard_check(ord("W"));
    if (mx != 0 && my != 0) {
        mx *= 0.7071; my *= 0.7071;
    }
    x += mx * mv;
    y += my * mv;
}