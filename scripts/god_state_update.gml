state_previous = state_current;
state_current = argument[0];
state_change = 1;

with(o_player)
{
    player_state_update(argument[0]);
}

script_execute(state_end[state_previous]);
