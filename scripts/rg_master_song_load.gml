///rg_master_song_load(songNameString)


//0. Open file
var file = file_text_open_read(argument[0]);

//1. BPM
bpm = file_text_read_real(file)
file_text_readln(file);
file_text_readln(file);

//2. IMPORT THE NOTES
//reset the array
song_notes = 0;
song_notes_n = 0;

//get the no of lines
var n_lines = file_text_read_real(file);
file_text_readln(file);

var n = 0;
while(n < n_lines)
{
    //BAR
    song_notes[n,0] = file_text_read_real(file);
    
    //32nd Note
    song_notes[n,1] = file_text_read_real(file);
    
    //NOTE TYPE
    song_notes[n,2] = file_text_read_real(file);
    
    file_text_readln(file);
    n++;
}


//CLOSE THE FILE
file_text_close(file);

song_loaded = 1;

