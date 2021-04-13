
if(state_current == states.pause)
{
    draw_text(320, 16, "PAUSED");
}


//--DEBUG--

text_timer += global.dt_steady;
if(text_timer >= text_alarm)
{
    text_timer = 0;
}
text_relative = text_timer/text_alarm;

text_relative= sin(text_relative*2*pi)
//player_keybindings_draw_debug();

/*
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_set_font(f_menu);

draw_set_colour(c_white);
var string_n = "Don't You Want To Love Me";
draw_text_outline_transformed(200,200,string_n,3,c_black,16,1+(text_relative*0.3),1+(text_relative*0.3));
*/
