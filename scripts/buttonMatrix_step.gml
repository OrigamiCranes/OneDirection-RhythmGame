
//--1. SELECTED TIMER LOOP--
selected_timer += global.dt_steady;
if(selected_timer >= selected_alarm)
{
    selected_timer = 0;
    
}
selected_relative = selected_timer / selected_alarm;


//--2. CHECK IF UPDATE POS IS ACTIVE
if(update_flag == 1)
{
    
    update_timer += global.dt_steady;
    update_relative = update_timer/update_alarm;
    if(update_timer > update_alarm)
    {
        update_flag = 0;
    }
    
    else
    {
        var n = 0;
        while(n < button_n)
        {
            y = y_previous + (update_relative*update_y_jump*update_direction);
            var y_pos = y + (button_height*n)+(y_spacing*n);
            button_id[n].y = y_pos;
            n++;
        }
    }
}
