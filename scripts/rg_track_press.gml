//CHECK NOTE LIST

//check if any notes
var note = ds_queue_head(note_list)
if(note != undefined && instance_exists(note) == 1)
{
    //check note position 
    if(note.x < x+ parent.track_miss_x_end)
    {
        //NOTE HIT
        var hitzone = rg_track_note_pos(note);
        
        //APPLY TO MASTER
        rg_master_hit_note(note.n,hitzone);
        
        //Press NOTE
        with(note)
        { 
            note_press();
        }
        
        //REMOVE NOTE FROM LIST
        ds_queue_dequeue(note_list);
        
    }

        
}
else if(note == undefined)
{
 //WTF??
}
else if(instance_exists(note) == 0)
{
    ds_queue_dequeue(note_list);
    rg_track_press();
}
