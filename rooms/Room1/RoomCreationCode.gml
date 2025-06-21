/// Room1: Room Creation Code

// GUI / Control レイヤーがなければ自動で作成
if (!layer_exists("GUI")) layer_create(0, "GUI");
if (!layer_exists("Control")) layer_create(1, "Control");

// ② グローバル初期化
scr_gameInit();

// Room Creation Code（Room1等）
instance_create_layer(0, 0, "GUI", obj_hotbar);
instance_create_layer(0, 0, "Control", obj_dialogueManager);

instance_create_layer(0, 0, "Instances", obj_dialogueManager);
global.isTalking = false;
