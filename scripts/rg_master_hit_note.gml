///rg_master_hit_note(note_n,hitzone)

var note_n = argument[0];
var hit_type = argument[1];

with(o_rg_master)
{

if(hit_type == 2)
{
    combo_add(1);
    score_add(100);
}
else if(hit_type == 1 || hit_type == 3)
{
    combo_add(0);
    score_add(25);
}
else if(hit_type == 0)
{
    combo_break();
}
}
