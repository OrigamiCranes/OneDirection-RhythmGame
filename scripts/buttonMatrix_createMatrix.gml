///buttonMatrix_createMatrix(button_w,button_h,button_n)

button_width = argument[0];
button_height = argument[1];
button_n = argument[2];


button_y_center = button_height/2;
button_x_center = button_width/2;

y_spacing = 30;

update_y_jump = y_spacing+button_height;
update_flag = 0;
update_timer = 0;
update_alarm = 0.5;
update_relative = 0;


button_current = 0;
button_previous = 0;

//SPAWN BUTTONS
var n=0;
while(n<button_n)
{

    var x_pos = x;
    var y_pos = y + (button_height*n)+(y_spacing*n);
    button_id[n] = instance_create(x_pos,y_pos,o_button);
    button_id[n].parent = id;
    button_id[n].selected = 0;
    
    n++;
}

button_id[0].selected = 1;


//--SELECTED ALARM
selected_timer = 0;
selected_alarm = 1;
selected_relative = 0;


