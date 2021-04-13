///button_draw_selected()

var scale = sin(parent.selected_relative*2*pi)
draw_text_outline_transformed(x+(parent.button_width/2),y+(parent.button_height/2),caption,3,c_black,8,1+(scale*0.1),1+(scale*0.1));
