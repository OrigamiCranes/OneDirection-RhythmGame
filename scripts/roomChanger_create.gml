center_x = o_god.window_width/2;
center_y = o_god.window_height/2;

r_start = (o_god.window_height/2)*2;

circle_alarm = 1;
circle_timer = 0;
circle_relative =0;

death_timer = 0;
death_alarm = 0.5;

room_id = 0;

surface_fade = surface_create(o_god.window_width, o_god.window_height);
surface_set_target(surface_fade);
draw_clear_alpha(c_black, 0);
surface_reset_target();
view_surface_id[0] = surface_fade;

