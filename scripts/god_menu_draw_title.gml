var xpos = argument[0];
var ypos = argument[1];

width = 500;
height = 100;
draw_set_colour(c_black);
draw_rectangle(xpos-5,ypos-5,xpos+width+5,ypos+height+5,0);
draw_set_colour(c_white);
draw_rectangle(xpos,ypos,xpos+width,ypos+height,0);

draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(f_menu);

caption = "Song Selection:";
draw_text_outline_transformed(xpos+(width/2),ypos+(height/2),caption,3,c_black,8,1,1);
