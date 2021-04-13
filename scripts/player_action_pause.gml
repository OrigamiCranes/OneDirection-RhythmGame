///player_action_pause

//check if pause has just changed
if((action_pause_key[2] == 1 || action_pause_key[1] == 0) && pause_change == 1)
{
    pause_change = 0;
    
}

if(pause_change = 0)
{

    //1. CHECK IF action_gamemode key has been pressed
    if(action_pause_key[0] == 1)
    {
        //update state if pressed
        if(state_current == states.pause)
        {
            player_state_update(states.live);
        }
        else
        {
            player_state_update(states.pause);
        }
    }

}
exit;
