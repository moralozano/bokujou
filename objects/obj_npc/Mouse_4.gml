/// obj_npc - Mouse Left Pressed
if (!talking && point_distance(x, y, obj_player.x, obj_player.y) < 32) {
	global.isInDialog = true;
    talking = true;
    dialogue_index = 0;

    obj_dialogueManager.visible = true;
    obj_dialogueManager.dialogue_owner = id;

    global.isInDialog = true;

    show_debug_message("会話開始: NPC ID " + string(id));
}
