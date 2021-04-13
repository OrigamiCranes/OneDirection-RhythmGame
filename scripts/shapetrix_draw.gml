///--DRAW BG
draw_set_colour(bg_col);
draw_rectangle(0,0,o_god.window_width,o_god.window_height,0)




//--DRAW SHAPES
var n = 0;
var m = 0;

while(n < x_number)
{
    while(m < y_number)
    {
        //DRAW SHADOW
        draw_set_colour(c_black);
        draw_rectangle(xpos[n,m]+x_shadow,ypos[n,m]+y_shadow,xpos[n,m]+width+x_shadow,ypos[n,m]+height+y_shadow,0)
        //DRAW RECT
        draw_set_colour(c_white);
        draw_rectangle(xpos[n,m],ypos[n,m],xpos[n,m]+width,ypos[n,m]+height,0)
    
        m++;
    }
    n++;
    m=0;
}
