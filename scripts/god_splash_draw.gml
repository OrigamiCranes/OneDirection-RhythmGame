var xpos = 0;
var ypos = 0;

var width = window_width;
var height = window_height;

draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(f_menu);
bg_col = make_colour_rgb(254,155,150)
draw_set_colour(c_white);

caption = "01 Direction:";
draw_text_outline_transformed(xpos+(width/2),ypos+(2*height/8),caption,3,c_black,16,2,2);

caption = "Robot Boy-band Experience!";
draw_text_outline_transformed(xpos+(width/2),ypos+(3*height/8),caption,3,c_black,8,1,1);

caption = "PRESS ENTER";
draw_text_outline_transformed(xpos+(width/2),ypos+(6*height/8),caption,3,c_black,8,0.5,0.5);


