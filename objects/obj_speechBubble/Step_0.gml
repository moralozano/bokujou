/// obj_speechBubble – Step イベント

if (!instance_exists(owner_id) || !owner_id.talking_to_player) {
    instance_destroy();
    exit;
}
var off = 32;
x = owner_id.x;
y = owner_id.y - off;
