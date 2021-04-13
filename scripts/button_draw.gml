draw_set_colour(c_black);
draw_rectangle(x-5,y-5,x+parent.button_width+5,y+parent.button_height+5,0);
draw_set_colour(c_white);
draw_rectangle(x,y,x+parent.button_width,y+parent.button_height,0);

draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(f_menu);

if(selected == 0)
{
    button_draw_normal();
}
else if(selected == 1)
{
    button_draw_selected();
}


