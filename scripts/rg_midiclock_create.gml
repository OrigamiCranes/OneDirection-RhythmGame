measure = 0;
measure_spawn = measure + n_bars;

quarter_count = 0;
micros_per_sec = 60000000;

div_4 = 0;
div_8 = 0;
div_16 = 0;
div_32 = 0;

div_4_previous = div_4;
div_8_previous = div_8;
div_16_previous = div_16;
div_32_previous = div_32;

//Use the triggers to play sounds in musical time, (i.e. to play a sound every 
//quarter note- "if obj_midi_clock.div_4_trigger == true audio_play_sound(snd_sound, 1, 0);"
 
div_m_trigger = false;
div_4_trigger = false;      //quarter note trigger
div_8_trigger = false;      //eigth note trigger
div_16_trigger = false;     //16th note trigger
div_32_trigger = false;     //32nd note trigger
