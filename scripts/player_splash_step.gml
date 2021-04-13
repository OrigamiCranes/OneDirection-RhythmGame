if(action_enter[0] == 1 && splash_pressed == 0)
{
    splash_pressed = 1;
    temp_id = instance_create(0,0,o_roomChanger);
    temp_id.room_id = states.menu;
}
