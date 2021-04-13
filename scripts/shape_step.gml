

//--CHECK IF OFF SCREEN
if(x > room_width+parent.width || x < 0-parent.width || y>room_height+parent.height || y<0-parent.height)
{
    instance_destroy();
    
}
