///Show Clock

x_pos = argument[0];
y_pos = argument[1];

draw_set_color(c_black);
draw_set_halign(fa_center);

draw_text(x_pos+100,y_pos+170,"measure");
draw_text(x_pos+100,y_pos+200, measure);
draw_text(x_pos+200,y_pos+170,"beat");
draw_text(x_pos+200,y_pos+200, div_4);
draw_text(x_pos+300,y_pos+170,"8th");
draw_text(x_pos+300,y_pos+ 200, div_8);
draw_text(x_pos+400,y_pos+170,"16th");
draw_text(x_pos+400,y_pos+ 200, div_16);
draw_text(x_pos+500,y_pos+170,"32nd");
draw_text(x_pos+500,y_pos+ 200, div_32);
draw_text(x_pos,y_pos+170,"beat time relative");
draw_text(x_pos,y_pos+200,beat_time_relative);


var sine = sin(2*pi*beat_time_relative);
if(sine < 0)
{
    sine = 0
}

draw_circle(x_pos,y_pos+300,20+(20*sine),1);


draw_text(x_pos+300,y_pos+300, "bpm: "+string(bpm));


