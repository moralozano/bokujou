// 会話ウィンドウが表示中で、スペースキーまたは左クリックが押されたら
if (visible && (keyboard_check_pressed(vk_space) || mouse_check_button_pressed(mb_left))) {

    // 会話中のNPCが設定されているか確認
    if (dialogue_owner != noone) {

        // 次のセリフへ進む
        dialogue_owner.dialogue_index++;

        // セリフがすべて終わったらウィンドウを閉じる
        if (dialogue_owner.dialogue_index >= array_length(dialogue_owner.dialogue)) {
            visible = false;
            dialogue_owner.talking = false;
            dialogue_owner = noone;
			
			global.isInDialog = false; // 🔸ここでリセット！
        }
    }
}
