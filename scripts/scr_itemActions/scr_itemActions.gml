/* =====================================================
   アイテム／行為ごとの処理
   ここに３つの関数をまとめて定義しています
===================================================== */

/// scr_useHerb(_obj) : ハーブ → 体力 +10
function scr_useHerb_fn(_obj)
{
    with (_obj)
    {
        stamina = min(stamina + 10, max_stamina);
    }
}

/// scr_useMilk(_obj) : ミルク → スタミナ +20
function scr_useMilk_fn(_obj)
{
    with (_obj)
    {
        stamina = min(stamina + 20, max_stamina);
    }
}

/// scr_actEjacBody(_obj) : サキュバスにカラダ射精
function scr_actEjacBody_fn(_obj)
{
    // 性行為イベントに丸投げ
    scr_performSexEvent(_obj.id, "ejac_body");
}
