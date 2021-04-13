if(action_rg_up[0] == 1)
{
    with(o_buttonMatrix)
    {
        buttonMatrix_update_selected(-1);
    }
}

else if(action_rg_down[0] == 1)
{
        with(o_buttonMatrix)
    {
        buttonMatrix_update_selected(1);
    }
}

if(action_enter[0] == 1 && menu_pressed == 0)
{
    menu_pressed = 1;
    with(o_buttonMatrix)
    {
        buttonMatrix_press();
    }
}
