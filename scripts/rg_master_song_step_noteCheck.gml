

if(song_notes_n < array_height_2d(song_notes))
{

var note_check = song_notes[song_notes_n,0]
if( note_check == measure+1)
{
    
    if(song_notes[song_notes_n,1]+1 == div_32)
    {
        if(div_32_trigger == true)
        {
            rg_master_spawn_note(song_notes[song_notes_n,2],0)
            song_notes_n++;
            
            rg_master_song_step_noteCheck();
        }
    }
}

}
