///rg_track_note_pos(note_id)


var x_pos = argument[0].x;

if(x_pos > x+parent.track_miss_x_start)
{
    return 0;
}
else if(x_pos > x+parent.track_early_x_start)
{
    return 1;
}
else if(x_pos > x+parent.track_perfect_x_start)
{
    return 2;
    
}
else if(x_pos > x+parent.track_late_x_start)
{
    return 3;
}
else if(x_pos > x+parent.track_destroy_x_start)
{
    return 0;
}
else
{
    return 0;
}
