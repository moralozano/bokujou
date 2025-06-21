/// scr_useSlotItem(_target)
function scr_useSlotItem(_target)
{
    var itm = global.hotbar_items[global.hotbar_sel];
    if (itm < 0) exit;

    if (!variable_struct_exists(global.itemDB, itm)) exit;

    var fn = global.itemDB[$ itm].fn;
    if (is_callable(fn))
        fn(_target);     // ★対象を渡して実行
}

