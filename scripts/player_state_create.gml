//--STATES--


//STATE VARIABLES
state_current = o_god.state_current;
state_previous = 0;

state_change = 1;

state_timer = 0;
state_alarm = 0;

state_flag = 0;

//--STATE SCRIPTS--
state_create[states.pause] = player_pause_create;
state_create[states.live] = player_live_create;
state_create[states.menu] = player_menu_create;
state_create[states.complete] = player_complete_create;
state_create[states.splash] = player_splash_create;

state_init[states.pause] = player_pause_init;
state_init[states.live] = player_live_init;
state_init[states.menu] = player_menu_init;
state_init[states.complete] = player_complete_init;
state_init[states.splash] = player_splash_init;

state_step[states.pause] = player_pause_step;
state_step[states.live] = player_live_step;
state_step[states.menu] = player_menu_step;
state_step[states.complete] = player_complete_step;
state_step[states.splash] = player_splash_step;

state_end[states.pause] = player_pause_end;
state_end[states.live] = player_live_end;
state_end[states.menu] = player_menu_end;
state_end[states.complete] = player_complete_end;
state_end[states.splash] = player_splash_end;

//-- RUN STATE CREATION SCRIPTS--
var n = 1;
while(n < array_length_1d(state_create))
{
    script_execute(state_create[n]);
    n++;
}

