
//instance_create(0,0,o_roomChanger);

rgMaster = instance_create(0,0,o_rg_master);

///--1. LOAD SONG DATA--
with(rgMaster)
{
    rg_master_song_load(working_directory + "/song1.txt");
}

//--2. LOAD AUDIO--
audio_id = audio_play_sound(song1, 0, false);
audio_sound_gain(audio_id, 0, 0);
audio_length = audio_sound_length(audio_id);
/*
audio_song = audio_create_sync_group(false);
audio_play_in_sync_group(audio_song, song0);
audio_sound_gain(song0, 1, 0);
audio_start_sync_group(audio_song);
*/

//--SHAPE TRIX


shapetrix = instance_create(0,0,o_shapetrix);
with(shapetrix)
{

    x_number = 25;
    y_number = 25;
    
    xpos[x_number-1,y_number-1] = 0;
    ypos[x_number-1,y_number-1] = 0;
    
    bg_col = make_colour_rgb(179,241,255)
    
    width = 5;
    height = 5;
    
    x_scale = 1.2;
    y_scale = x_scale;
    
    x_start = 0-o_god.window_width*(x_scale/2);
    y_start = 0-o_god.window_height*(y_scale/2);
    
    x_end = o_god.window_width+(o_god.window_width*(x_scale/2));
    y_end = o_god.window_height+(o_god.window_height*(y_scale/2));
    
    pos_timer = 0;
    pos_alarm = 10;
    pos_relative = 0;
    
    
    x_spacing = (abs(x_start)+abs(x_end))/x_number;
    y_spacing = (abs(y_start)+abs(y_end))/y_number;
    
    angle = (90/360)*(2*pi)
    x_multiplier = cos(angle);
    y_multiplier = sin(angle);
    
    x_shadow = 8;
    y_shadow = 8;
    //SET POSITIONS
    var n=0;
    var m=0;
    while(n<x_number)
    {
        while(m<y_number)
        {
            
            xpos[n,m] = x_start + (pos_relative*x_spacing*x_multiplier) + (n*x_spacing);    
            ypos[n,m] = y_start + (pos_relative*y_spacing*y_multiplier) + (m*y_spacing);
            m++;
        }
        n++;
        m=0;
    }
}
