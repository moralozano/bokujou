/// affinity_gain(_inc)  --- 新規スクリプトファイル
function affinity_gain(_inc)
{
    var inc = clamp(_inc,
                    0,
                    global.AFFECTION_DAILY_CAP - affection_gain_today);
    affection_gain_today += inc;
    affection            = clamp(affection + inc, 0, 100);
}