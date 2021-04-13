

//DRAW BLACK BOX
draw_set_colour(c_black);
draw_set_alpha(1);
draw_rectangle(x,y,o_god.window_width,o_god.window_height,false);

if(circle_timer <= circle_alarm)
{
    //DRAW CIRCLE FADE
    draw_set_alpha(0.5);
    draw_set_colour(c_white);
    draw_set_blend_mode(bm_src_alpha);
    //draw_set_colour_write_enable(1,1,1,0);
    draw_circle(center_x,center_y,r_start-(circle_relative*r_start),false);
}
else
{

}

draw_set_blend_mode(bm_normal);
draw_set_alpha(1);
//draw_set_colour_write_enable(1,1,1,1);


