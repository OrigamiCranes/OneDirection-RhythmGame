
draw_set_font(f_default);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

//1. LEFT
x_spacing = 64;
array = action_rg_left;
var n = 0; var m = 0;
draw_text(16+(m*x_spacing),16+(16*n),"Left:");
n++;
draw_text(16+(m*x_spacing),16+(16*n),array[@0]);
n++;
draw_text(16+(m*x_spacing),16+(16*n),array[@1]);
n++;
draw_text(16+(m*x_spacing),16+(16*n),array[@2]);

//2. RIGHT
array = action_rg_right;
var n = 0; m++;
draw_text(16+(m*x_spacing),16+(16*n),"Right:");
n++;
draw_text(16+(m*x_spacing),16+(16*n),array[@0]);
n++;
draw_text(16+(m*x_spacing),16+(16*n),array[@1]);
n++;
draw_text(16+(m*x_spacing),16+(16*n),array[@2]);

//3. UP
array = action_rg_up;
var n = 0; m++;
draw_text(16+(m*x_spacing),16+(16*n),"Up:");
n++;
draw_text(16+(m*x_spacing),16+(16*n),array[@0]);
n++;
draw_text(16+(m*x_spacing),16+(16*n),array[@1]);
n++;
draw_text(16+(m*x_spacing),16+(16*n),array[@2]);

//4. DOWN
array = action_rg_down;
var n = 0; m++;
draw_text(16+(m*x_spacing),16+(16*n),"Down:");
n++;
draw_text(16+(m*x_spacing),16+(16*n),array[@0]);
n++;
draw_text(16+(m*x_spacing),16+(16*n),array[@1]);
n++;
draw_text(16+(m*x_spacing),16+(16*n),array[@2]);

//5. PAUSE
array = action_pause_key;
var n = 0; m++;
draw_text(16+(m*x_spacing),16+(16*n),"Pause:");
n++;
draw_text(16+(m*x_spacing),16+(16*n),array[@0]);
n++;
draw_text(16+(m*x_spacing),16+(16*n),array[@1]);
n++;
draw_text(16+(m*x_spacing),16+(16*n),array[@2]);

