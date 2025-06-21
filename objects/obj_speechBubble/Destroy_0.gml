/// obj_speechBubble – Destroy   ★吹き出し終了で会話解除
if (instance_exists(owner_id))
{
    with (owner_id) talking_to_player = false;
}
/* ここでは global.isTalking を操作しない
   （メッセージウィンドウ専用フラグのため） */
