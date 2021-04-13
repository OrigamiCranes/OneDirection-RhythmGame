
surface_set_target(surface_fade);

if(room_id != 0)
{
    roomChanger_draw_fadeOut();
}
else
{
    roomChanger_draw_fadeIn();
}

surface_reset_target();

draw_surface(surface_fade,0,0);
