circle_timer += global.dt_steady;
circle_relative = circle_timer/circle_alarm;

if(circle_timer >= circle_alarm)
{
    if(room_id == 0)
    {
        roomChanger_end();
    }
    else
    {
    death_timer  += global.dt_steady;
    
    if(death_timer >= death_alarm)
    {
        roomChanger_end();
    }
    }
}




//SURFACE CHECK
if !surface_exists(surface_fade)
   {
   surface_fade = surface_create(o_god.window_width, o_god.window_height);
   surface_set_target(surface_fade);
   draw_clear_alpha(c_black, 0);
   surface_reset_target();
   view_surface_id[0] = surface_fade;
   }
