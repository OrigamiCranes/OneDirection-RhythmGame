pos_timer += global.dt_steady;

if(pos_timer >= pos_alarm)
{
    pos_timer = 0;
}

pos_relative = pos_timer/pos_alarm;

//update positons
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
