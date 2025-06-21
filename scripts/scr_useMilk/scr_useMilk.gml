function scr_useMilk(_obj) {
    if (!instance_exists(_obj)) return;
    _obj.stamina = min(_obj.stamina + 20, _obj.max_stamina);
}
