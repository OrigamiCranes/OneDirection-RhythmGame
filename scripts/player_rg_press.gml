///player_rg_press(action_button,track_n)

action_button = 0;
action_button = argument[0];

if(action_button[2] == 1 || (action_button[0] == 0 && o_rg_master.track[argument[1]].hold == 1))
{
    with(o_rg_master.track[argument[1]])
    {
        rg_track_release();
    }
}

else if(action_button[0] == 1 && o_rg_master.track[argument[1]].hold == 0)
{
    with(o_rg_master.track[argument[1]])
    {
        
        rg_track_press();
        hold = 1;
        
    }
}
