/**********************************************************************
    scr_gameInit()
    ゲーム起動時（最初の Room の Creation Code）で１回だけ呼ぶ
**********************************************************************/
/// scr_gameInit.gml
function scr_gameInit() {
    global.HOTBAR_RIGHT_SIZE = 1;
	global.isInDialog = false;
    global.KEY_TALK     = vk_space;
    global.KEY_INTERACT = mb_left;
	// scr_gameInit.gml
	global.HOTBAR_LEFT_SIZE  = 4; // 左下スロット数
	global.HOTBAR_RIGHT_SIZE = 4; // 右下スロット数
    global.HOTBAR_SIZE  = 8;
	global.hotbar_left  = array_create(global.HOTBAR_LEFT_SIZE, -1);
	global.hotbar_right = array_create(global.HOTBAR_RIGHT_SIZE, -1);
	global.hotbar_sel   = 0;     // 左下選択中インデックス（0〜3）
    global.hotbar_items = array_create(global.HOTBAR_SIZE, -1);
    global.hotbar_sel   = 0;
    global.act_ejac_body = 100;  // 行為IDは整数
    global.hotbar_items[0] = global.act_ejac_body;

    global.itemDB = {};
    global.itemDB[1]   = { name:"ハーブ", spr:spr_itm_herb, fn:scr_useHerb_fn };
    global.itemDB[2]   = { name:"ミルク", spr:spr_itm_milk, fn:scr_useMilk_fn };
    global.itemDB[100] = { name:"カラダ射精", spr:spr_act_Ejac_Body, fn:scr_actEjacBody_fn };

    global.dialogue  = [];
    global.dialog_index  = 0;
    global.dialog_target = noone;
}
