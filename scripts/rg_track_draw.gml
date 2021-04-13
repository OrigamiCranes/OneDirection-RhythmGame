depth = -100;

var border = 5;
col1 = make_colour_rgb(65, 65, 65);
draw_set_colour(col1);
draw_rectangle(x-border,y-border,x+parent.track_width+border,y+parent.track_height+border,0);

col1 = make_colour_rgb(250, 250, 250);
col2 = make_colour_rgb(220,220,220);
draw_rectangle_colour(x,y,x+parent.track_width,y+parent.track_height,col1,col1,col2,col2,0);

col1 = make_colour_rgb(254, 155, 150);
draw_set_colour(col1);
draw_rectangle(x,y,x+parent.track_width,y+parent.track_height,1);
//DESTROY POS
draw_set_colour(c_black);
//draw_rectangle(x+parent.track_destroy_x_start,y,x+parent.track_destroy_x_end,y+parent.track_height,1);

//LATE
draw_set_colour(c_orange);
//draw_rectangle(x+parent.track_late_x_start,y,x+parent.track_late_x_end,y+parent.track_height,1);

//PERFECT
col1 = make_colour_rgb(144, 242, 167);
draw_set_colour(col1);
draw_rectangle(x+parent.track_perfect_x_start,y,x+parent.track_perfect_x_end,y+parent.track_height,0);

col1 = make_colour_rgb(104, 202, 127);
draw_set_colour(col1);
draw_rectangle(x+parent.track_perfect_x_start,y,x+parent.track_perfect_x_end,y+parent.track_height,1);

//EARLY
draw_set_colour(c_orange);
//draw_rectangle(x+parent.track_early_x_start,y,x+parent.track_early_x_end,y+parent.track_height,1);

//MISS
draw_set_colour(c_red);
//draw_rectangle(x+parent.track_miss_x_start,y,x+parent.track_miss_x_end,y+parent.track_height,1);

//SPAWN
draw_set_colour(c_gray);
//draw_rectangle(x+parent.track_spawn_x_start,y,x+parent.track_spawn_x_end,y+parent.track_height,1);

