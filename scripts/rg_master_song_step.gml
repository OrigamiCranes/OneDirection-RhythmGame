if(song_active == 1)
{

song_time += global.dt_steady;
beat_time += global.dt_steady;
beat_time_relative = beat_time/b_length;

if(song_time > o_god.audio_length+3)
{
    rg_master_song_end();
}
//1. STEP THE MIDI CLOCK--


rg_midiclock_step();


//2. SPAWN BEAT IF BEAT
if(div_4_trigger == true)
{
    beat_time = 0;
    
    var beat_type = 0;
    if(div_m_trigger == true)
    {
        beat_type = 1;
    }
    var n = 0;
    while(n < array_length_1d(track))
    {
        rg_master_spawn_beat(n,beat_type);
        n++;
    }
}


//2. CHECK THE NOTE_ARRAY FOR NOTE SPAWNS--
rg_master_song_step_noteCheck();

/*
if(div_4_trigger == true)
{
    m++;
    var track_n = m mod 4;
    rg_master_spawn_note(track_n,0);
}

if(measure > 2)
{
    if(div_4_trigger == true)
    {
        var f = 0;
    }
}

*/



}
else if(song_active == 0 && song_loaded = 1)
{
    song_start_timer += global.dt_steady;
    
    if(song_start_timer > song_start_alarm)
    {
        song_start_timer = 0;
        rg_master_song_start();
    }
}




