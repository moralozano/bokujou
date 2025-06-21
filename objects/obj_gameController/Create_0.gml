// キー設定
global.KEY_UP    = ord("W");
global.KEY_DOWN  = ord("S");
global.KEY_LEFT  = ord("A");
global.KEY_RIGHT = ord("D");
global.KEY_TALK  = vk_space;
global.KEY_ACT   = ord("E");

// 定数
global.AFFECTION_DAILY_CAP = 20;

global.isTalking = false;   // 会話ウィンドウを開いている間 true

// affection_table.json
var p1 = "data/affection_table.json";
if (file_exists(p1)) {
    var b = buffer_load(p1); buffer_seek(b, buffer_seek_start,0);
    global.actionTable = json_parse(buffer_read(b,buffer_string)); buffer_delete(b);
} else global.actionTable = {};

// sex_menu.json
var p2 = "data/sex_menu.json";
if (file_exists(p2)) {
    var b = buffer_load(p2); buffer_seek(b, buffer_seek_start,0);
    global.menuData = json_parse(buffer_read(b,buffer_string)); buffer_delete(b);
} else global.menuData = {};
