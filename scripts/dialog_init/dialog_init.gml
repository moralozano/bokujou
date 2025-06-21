function dialog_init(_dlg, _txt, _face, _cho, _cb)
{
    with (_dlg)
    {
        text_lines   = _txt;
        face_sprite  = _face;
        choices      = _cho;
        on_choice_fn = _cb;
        page         = 0;
        initialized  = true;
    }
}
