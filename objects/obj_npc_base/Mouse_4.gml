// obj_npc_base - Mouse Left Pressed
if (!talking && point_distance(x, y, obj_player.x, obj_player.y) < 32) {
    talking = true;
    dialogue_index = 0;

    obj_dialogueManager.visible = true;
    obj_dialogueManager.dialogue_owner = id;

    global.isInDialog = true;
	global.isTalking  = true;
}
