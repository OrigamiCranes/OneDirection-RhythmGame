
// 0. DEFINE VARIABLES

move_left[0] = ord("A");
move_right[0] = ord("D");
move_up[0] = ord("W");
move_down[0] = ord("S");

rg_up[0] = vk_up;
rg_down[0] = vk_down;
rg_left[0] = vk_left;
rg_right[0] = vk_right;

rg_up[1] = ord("W");
rg_down[1] = ord("S");
rg_left[1] = ord("A");
rg_right[1] = ord("D");

enter_key[0] = vk_enter;

interaction_key[0] = ord("E");

shoot_key[0] = mb_left;

shootalt_key[0] = mb_right;

powerup_key[0] = ord("F");

pause_key[0] = vk_escape;

gameSpeed_key[0,0] =ord( "1");
gameSpeed_key[1,0] = ord("2");
gameSpeed_key[2,0] = ord("3");

gameMode_key[0,0] = vk_escape;
gameMode_key[1,0] = vk_f1;
gameMode_key[2,0] = vk_f2;
gameMode_key[3,0] = vk_f3;


//--ACTION FLAGS--
//array values
//0 = key press
//1 = key hold
//2 = key_release
var n=0;
while(n<3)
{
    action_enter[n] = 0;
    action_move_left[n] = 0;
    action_move_right[n] = 0;
    action_move_up[n] = 0;
    action_move_down[n] = 0;
    action_move_alarm[n] = 0;
    
    action_interaction_key[n] = 0;
    
    action_shoot_key[n] = 0;
    action_shootalt_key[n] = 0;
  
    action_powerup_key[n] = 0;
    
    action_pause_key[n]=0;
    
    action_mousewheel_up[n] = 0;
    action_mousewheel_down[n] = 0;
    
    action_gameSpeed[n] = 0;
    action_gameMode[n] = 0;
    
    action_rg_up[n] =0;
    action_rg_down[n] =0;
    action_rg_right[n] =0;
    action_rg_left[n]=0;
    
    n++;
}
