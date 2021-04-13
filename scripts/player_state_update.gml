///player_state_update(new_state)

if(argument[0] != 0)
{
    state_previous = state_current;
    state_current = argument[0];
    state_change = 1;
}
