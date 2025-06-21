/// obj_player – Step   ★全文
var lock = false;
with (obj_livestock) if (talking_to_player) lock = true;

if (global.isInDialog || lock) exit;                         // :contentReference[oaicite:3]{index=3}

// WASD 移動
var mv = 2;
var mx = keyboard_check(ord("D")) - keyboard_check(ord("A")); // ord() は文字コード取得
var my = keyboard_check(ord("S")) - keyboard_check(ord("W"));
if (mx!=0 && my!=0){ mx*=0.7071; my*=0.7071; }
x += mx*mv;
y += my*mv;

