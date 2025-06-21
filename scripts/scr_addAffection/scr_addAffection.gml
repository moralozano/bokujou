/// scr_addAffection(_amount)
/// 呼び出し：サキュバス個体
function scr_addAffection(_amount)
{
    // 変数が無い個体でも落ちない保険
    if (!variable_instance_exists(id, "affection_gain_today"))
        affection_gain_today = 0;

    var inc = clamp(_amount,
                    0,
                    global.AFFECTION_DAILY_CAP - affection_gain_today);
    affection_gain_today += inc;
    affection            = clamp(affection + inc, 0, 100);
}
