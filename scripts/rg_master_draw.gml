depth = -10;

bg_col = make_colour_rgb(65,65,65)
draw_set_colour(bg_col);
border = 3;
draw_rectangle(x-border,y-border,x+master_width+border,y+master_height+border,0);



bg_col = make_colour_rgb(254,155,150)
draw_set_colour(bg_col);
draw_rectangle(x,y,x+master_width,y+master_height,0);


/*
var n=0;
while(n < track_n)
{
    draw_rectangle(x+track_x_border,y+track_y_border+(track_y_spacing*n)+(track_height*n),
                x+track_x_border+track_width,y+track_y_border+(track_y_spacing*n)+(track_height*(n+1)), 1);
    
                
    n++;
}
*/

combo_draw(o_god.window_width*0.03,o_god.window_height*0.03);
score_draw(o_god.window_width*0.55, o_god.window_height*0.03);
//rg_midiclock_debug_draw(o_god.window_width*0.25,o_god.window_height*0.5);


