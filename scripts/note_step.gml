x -= parent.parent.note_speed*global.dt_steady;

particle_timer += global.dt_steady;
if(particle_timer > particle_alarm)
{
    particle_timer = 0;
    particle_n++;
    if(particle_n >= particle_max)
    {
        particle_n = 0;
    }
}

//CHECK IF PASSED THE DESTROY ZONE
if(x < parent.x + parent.parent.track_destroy_x_end)
{
    
    //CHECK IF ITS BEEN PRESSED YET
    if(pressed == 0)
    {
        with(parent)
        {
            rg_track_press();
        }
    }
    
    note_end();
}
