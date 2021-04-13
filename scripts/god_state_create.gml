enum states
{
    null = 0,
    pause = 1,
    live = 2,
    menu = 3,
    complete = 4,
    splash = 5,
    nullmax = 6
}

//--STATES--


//STATE VARIABLES
state_current = states.splash;
state_previous = 0;

state_change = 1;

state_timer = 0;
state_alarm = 0;

state_flag = 0;

//--STATE SCRIPTS--
state_create[states.pause] = god_pause_create;
state_create[states.live] = god_live_create;
state_create[states.menu] = god_menu_create;
state_create[states.complete] = god_complete_create;
state_create[states.splash] = god_splash_create;

state_init[states.pause] = god_pause_init;
state_init[states.live] = god_live_init;
state_init[states.menu] = god_menu_init;
state_init[states.complete] = god_complete_init;
state_init[states.splash] = god_splash_init;

state_step[states.pause] = god_pause_step;
state_step[states.live] = god_live_step;
state_step[states.menu] = god_menu_step;
state_step[states.complete] = god_complete_step;
state_step[states.splash] = god_splash_step;

state_end[states.pause] = god_pause_end;
state_end[states.live] = god_live_end;
state_end[states.menu] = god_menu_end;
state_end[states.complete] = god_complete_end;
state_end[states.splash] = god_splash_end;

//-- RUN STATE CREATION SCRIPTS--
var n = 1;
while(n < array_length_1d(state_create))
{
    script_execute(state_create[n]);
    n++;
}

