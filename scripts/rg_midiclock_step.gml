div_4_previous = div_4;
div_8_previous = div_8;
div_16_previous = div_16;
div_32_previous = div_32;


div_4 = (floor(song_time/(b_length)) mod 4) + 1 ;
div_8 = (floor(song_time/(b_length/2))mod 8) + 1;
div_16 = (floor(song_time/(b_length/4))mod 16) + 1;
div_32 = (floor(song_time/(b_length/8))mod 32) + 1;

if(div_m_trigger = true)
{
    div_m_trigger = false;
}

if div_4_previous != div_4 {
quarter_count += 1;
div_4_trigger = true;
}
else div_4_trigger = false;

if quarter_count = bpb+1{
measure +=1;
div_m_trigger = true;
measure_spawn = measure + n_bars;
quarter_count = 1;
}

if div_8_previous != div_8 div_8_trigger = true;
else div_8_trigger = false;
if div_16_previous != div_16 div_16_trigger = true;
else div_16_trigger = false;
if div_32_previous != div_32 div_32_trigger = true;
else div_32_trigger = false;

if(div_m_trigger = true)
{
    drive_m_trigger = false;
}













