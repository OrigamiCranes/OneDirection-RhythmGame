if(room_id = 0)
{
    instance_destroy(self);
}
else
{
    with(o_god)
    {
        god_state_update(other.room_id);
    }
    
    instance_destroy();
}
