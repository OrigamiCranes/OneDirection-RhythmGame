
x_number = 20;
y_number = 20;

xpos[x_number-1,y_number-1] = 0;
ypos[x_number-1,y_number-1] = 0;


bg_col = make_colour_rgb(254,155,150)
width = 25;
height = 25;

x_scale = 1.2;
y_scale = x_scale;

x_start = 0-o_god.window_width*(x_scale/2);
y_start = 0-o_god.window_height*(y_scale/2);

x_end = o_god.window_width+(o_god.window_width*(x_scale/2));
y_end = o_god.window_height+(o_god.window_height*(y_scale/2));

pos_timer = 0;
pos_alarm = 1;
pos_relative = 0;


x_spacing = (abs(x_start)+abs(x_end))/x_number;
y_spacing = (abs(y_start)+abs(y_end))/y_number;

angle = (0/360)*(2*pi)
x_multiplier = cos(angle);
y_multiplier = sin(angle);

x_shadow = 4;
y_shadow = 4;
//SET POSITIONS
var n=0;
var m=0;
while(n<x_number)
{
    while(m<y_number)
    {
        
        xpos[n,m] = x_start + (pos_relative*x_spacing*x_multiplier) + (n*x_spacing);    
        ypos[n,m] = y_start + (pos_relative*y_spacing*y_multiplier) + (m*y_spacing);
        m++;
    }
    n++;
    m=0;
}
