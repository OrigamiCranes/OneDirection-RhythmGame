
// 1. GO THROUGH EACH BUTTON TYPE CHECKING FOR PRESSES
//MOVEMENT KEYS
action_move_left = player_keybindings_check_key(move_left,action_move_left);
action_move_right = player_keybindings_check_key(move_right,action_move_right);
action_move_up = player_keybindings_check_key(move_up,action_move_up);
action_move_down = player_keybindings_check_key(move_down,action_move_down);

//check for movement alarm
if(action_move_left[0] == 1 || action_move_right[0] == 1 || action_move_up[0] == 1 || action_move_down[0] == 1)
{
    action_move_alarm = 1;
}

//CHECK FOR MOVEMENT CLASHES
if(action_move_left[0] && action_move_right[0])
{
    action_move_left[0] = 0;
    action_move_left[1] = 0;
    
    action_move_right[0] = 0;
    action_move_right[1] = 0;
    
    if(action_move_up[0] == 0 && action_move_down[0] == 0)
    {
        action_move_alarm = 0;
    }
    
}

if(action_move_up[0] && action_move_down[0])
{
    action_move_up[0] = 0;
    action_move_up[1] = 0;
    
    action_move_down[0] = 0;
    action_move_down[1] = 0;
    
    if(action_move_left[0] == 0 && action_move_right[0] == 0)
    {
         action_move_alarm = 0;
    }
    
}

// 1.5 interaction_key
action_interaction_key = player_keybindings_check_key(interaction_key,action_interaction_key);
action_powerup_key = player_keybindings_check_key(powerup_key,action_powerup_key);
action_pause_key = player_keybindings_check_key(pause_key,action_pause_key);
// 1.6 MOUSE
action_shoot_key = player_keybindings_check_mouse(shoot_key,action_shoot_key);
action_shootalt_key = player_keybindings_check_mouse(shootalt_key,action_shootalt_key);

//ENTER
action_enter = player_keybindings_check_key(enter_key,action_enter);

action_rg_up = player_keybindings_check_key(rg_up,action_rg_up);
action_rg_down = player_keybindings_check_key(rg_down,action_rg_down);
action_rg_left = player_keybindings_check_key(rg_left,action_rg_left);
action_rg_right = player_keybindings_check_key(rg_right,action_rg_right);


//--OLD STYLE---

// 1.9 gameSpeed
action_gameSpeed=0;
var m = 0;
while(m < array_height_2d(gameSpeed_key))
{

var n = 0;
while(n < array_length_2d(gameSpeed_key,m))
{
    if(keyboard_check(gameSpeed_key[m,n]) == 1)
    {
        action_gameSpeed = m+1;   
        break;    
    }
    n++;
}


m++;
}

// 1.10 GAMEMODE
action_gameMode=0;
var m = 0;
while(m < array_height_2d(gameMode_key))
{

var n = 0;
while(n < array_length_2d(gameMode_key,m))
{
    if(keyboard_check(gameMode_key[m,n]) == 1)
    {
        action_gameMode = m+1;   
        break;    
    }
    n++;
}


m++;
}

// 1.11 MOUSE WHEEl
action_mousewheel_up[0] = 0;
action_mousewheel_down[0] = 0;
if(mouse_wheel_up() == 1)
{
    action_mousewheel_up[0] = 1;
}

else if(mouse_wheel_down() == 1)
{
    action_mousewheel_down[0] = 1;
}

