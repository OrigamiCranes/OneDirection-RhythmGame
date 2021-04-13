track_spawn2hit_width = 1000;
track_perfect_width = 50;
track_late_width = 50;
track_early_width = track_late_width;
track_miss_width = 75;

track_hit2destroy_width = 250;

track_total_width = track_spawn2hit_width + track_hit2destroy_width;

track_height = 100;
track_y_spacing = 15;


//-- CALCULATE MASTER POSITION/ WIDTH--
master_width_percent = 0.8;
master_height_percent = 0.45;

//center x_pos, y_top
master_x = o_god.window_width *((1-master_width_percent)/2)
master_y = o_god.window_height* 0.3;

x = master_x;
y = master_y;

master_width = o_god.window_width * master_width_percent;
master_height = o_god.window_height * master_height_percent;

//--CALCULATE TRACKS
track_n = 4;

track_x_border_percent = 0.05;
track_x_border = track_x_border_percent *  master_width;
track_y_border_percent = 0.05;
track_y_border = track_y_border_percent * master_height;

track_width = (1-(track_x_border_percent*2))*master_width;
//track_width = master_width - (track_x_border*2);
//LENGTH FROM SPAWN TO HIT
track_spawn2hit_width = 0.96*track_width;

//these could be wrong
track_perfect_width = 64;
track_late_width = 0.04*track_width;
track_early_width = track_late_width;
track_miss_width = 0.08*track_width;
track_destroy_width = 0.0*track_width;
track_spawn_width = 0.04*track_width;

//LENGTH FROM HIT MARKER TO DESTROY
track_hit2destroy_width = 0.04*track_width;

track_total_width = track_spawn2hit_width + track_hit2destroy_width;

//CALCULATE X POS OF HITBOXES
track_destroy_x_start = 0;
track_destroy_x_end = track_destroy_x_start+ track_destroy_width;

track_perfect_x_start = track_hit2destroy_width;
track_perfect_x_end = track_perfect_x_start + track_perfect_width;
track_perfect_x_center = track_perfect_x_start + (track_perfect_width*0.5);

track_late_x_start = track_perfect_x_start - track_late_width;
track_late_x_end = track_perfect_x_start;

track_early_x_start = track_perfect_x_end;
track_early_x_end = track_early_x_start + track_early_width;

track_miss_x_start = track_early_x_end;
track_miss_x_end = track_early_x_end + track_miss_width;

track_spawn_x_end = track_width;
track_spawn_x_start = track_spawn_x_end - track_spawn_width;
track_spawn_x_center = track_spawn_x_start + (track_spawn_width*0.5)

track_y_spacing_percent = 0.02;
track_y_spacing = track_y_spacing_percent*master_height;

track_height_percent = (1-(track_y_border_percent*2)-(track_y_spacing_percent*(track_n-1)))/track_n;
track_height = track_height_percent*master_height;
track_y_center = track_height*0.5;


//SPRITE MODIFIERS
s_note_height = (track_height/16)*0.8;

s_beat_height = (track_height/32)*1;
//1. SPAWN TRACKS
var n=0;
while(n<track_n)
{
    track_x_pos = x+track_x_border;
    track_y_pos = y+track_y_border+(track_y_spacing*n)+(track_height*n);
    
    track[n] = instance_create(track_x_pos,track_y_pos,o_rg_track);
    track[n].parent = id;
    track[n].track_n = n;
    
    n++;   
}



