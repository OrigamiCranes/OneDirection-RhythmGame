
var x_pos = argument[0];
var y_pos = argument[1];

combo_width = 400;
combo_height = 100;

border = 3;
draw_set_colour(c_black);
draw_rectangle(x_pos-border,y_pos-border,x_pos+combo_width+border,y_pos+combo_height+border,0);

bg_col = make_colour_rgb(254,155,150)
draw_set_colour(bg_col);
draw_rectangle(x_pos,y_pos,x_pos+combo_width,y_pos+combo_height,0);
draw_set_font(f_menu);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_colour(c_white);
draw_text_outline_transformed(x_pos+(combo_width/4),y_pos+(combo_height/2),"Score:",3,c_black,8,0.5,0.5);
draw_text_outline_transformed(x_pos+(combo_width*3/4),y_pos+((combo_height)/2),score_current,3,c_black,8,0.5,0.5);
//draw_text(x_pos+(combo_width/2),y_pos+(combo_height/2),combo_current);
/*
if(combo_perfect == 1)
{
    draw_text(x_pos,y_pos+50,"PERFECT!");
}
