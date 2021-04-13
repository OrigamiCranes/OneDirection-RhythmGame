//rg_track_spawn_note(note_type)
var note_type = argument[0];

//SPAWN THE NOTE
var note_id = instance_create(x+parent.track_spawn_x_center,y+parent.track_y_center,o_note);

note_id.parent = id;
note_id.n = 0;
note_id.sprite_n = track_n;

//ADD THE NOTE TO THE NOTE LIST
ds_queue_enqueue(note_list,note_id);
