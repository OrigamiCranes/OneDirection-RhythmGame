///buttonMatrix_update_selected(increase/decrease)

if(update_flag == 0)
{
button_previous = button_current;
button_current += argument[0];

if(button_current >= button_n)
{
    button_current = button_previous;
}

else if(button_current < 0)
{
    button_current = button_previous;
}
else
{

update_timer = 0;
update_flag = 1;
update_direction = -argument[0];
update_relative = 0;
y_previous = y;

button_id[button_previous].selected = 0;
button_id[button_current].selected = 1;
}
}
