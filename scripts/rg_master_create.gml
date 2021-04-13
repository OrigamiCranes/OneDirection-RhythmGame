
x = 32;
y = 32;

rg_master_create_tracks();
//--MUSIC RELATED--
//beat per min
bpm = 120;
//beat per sec
b_length = 60/bpm;
bps = bpm/60;
//beat per bar
bpb = 4;
n_bars = 1;


//--NOTE SPEED--
track_spawn2hit_width = track_spawn_x_center - track_perfect_x_center; 
note_speed = (track_spawn2hit_width/(bpb * n_bars))*bps;

//--MIDICLOCK RELATED--
song_time = 0;
beat_time = 0;
beat_time_relative = 0;
rg_midiclock_create();
 m=0;
 
//
combo_create();
score_create();

rg_master_song_create();

