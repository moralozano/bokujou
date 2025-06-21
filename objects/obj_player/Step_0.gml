// obj_player – Step イベント全文

// 💬 会話中 or ロック中は移動禁止
if (global.isInDialog) {
    show_debug_message("🚫 移動禁止：会話中");
    exit;
}

var lock = false;
with (obj_livestock) {
    if (talking_to_player) lock = true;
}
if (lock) {
    show_debug_message("🚫 移動禁止：ロック中");
    exit;
}

// 🕹 WASD 移動
var mv = 2;
var mx = keyboard_check(global.KEY_RIGHT) - keyboard_check(global.KEY_LEFT);
var my = keyboard_check(global.KEY_DOWN)  - keyboard_check(global.KEY_UP);

if (mx != 0 && my != 0) {
    mx *= 0.7071;
    my *= 0.7071;
}

x += mx * mv;
y += my * mv;

show_debug_message("isTalking: " + string(global.isTalking));

// obj_player → Step Event
if (canMove) {
    // 移動処理ここに
    var mv = 2;
    if (keyboard_check(vk_left))  x -= mv;
    if (keyboard_check(vk_right)) x += mv;
    // etc...
}

// 会話開始時（textboxを生成した直後など）
canMove = false;

// 会話終了（textboxを破壊する直前）
canMove = true;