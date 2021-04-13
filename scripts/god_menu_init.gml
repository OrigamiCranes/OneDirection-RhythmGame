


buttonMatrix = instance_create(window_width*0.15,window_height*0.3,o_buttonMatrix);

with(buttonMatrix)
{
    buttonMatrix_createMatrix(o_god.window_width*0.7,o_god.window_height*0.1,3);
}

//SET THE BUTTONS
buttonMatrix.button_id[0].caption = "Show Me Your Flash Drive";

buttonMatrix.button_id[1].caption = "Coming Soon!";
buttonMatrix.button_id[2].caption = "Coming Soon!";

shapetrix = instance_create(0,0,o_shapetrix);
