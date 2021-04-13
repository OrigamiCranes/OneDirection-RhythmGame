//rg_track_spawn_note(note_type)
var beat_type = argument[0];

//SPAWN THE beat
var beat_id = instance_create(x+parent.track_spawn_x_center,y+parent.track_y_center,o_beat);

beat_id.parent = id;
beat_id.n = 0;
beat_id.sprite_n = beat_type;


