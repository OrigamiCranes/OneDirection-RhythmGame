x -= parent.parent.note_speed*global.dt_steady;




//CHECK IF PASSED THE DESTROY ZONE
if(x < parent.x + parent.parent.track_destroy_x_end)
{    
    beat_end();
}
