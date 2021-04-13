///player_keybindings_check_key(array,key_val,hold_val)

//0. initalise input
keybinding_array = 0;
action_array = 0;

keybinding_array = argument[0];
action_array = argument[1];

var key = action_array[0];
var hold = action_array[1];

//1. GO THROUGH ARRAY CHECKING FOR KEY PRESS
var n = 0;
while(n < array_length_1d(keybinding_array))
{
    if(keyboard_check(keybinding_array[n]) == 1)
    {
        
        //2. CHECK IF REOCCURING KEY PRESS (I.E HOLD)
        if(key == 1 || hold == 1)
        {
            hold = 1;
            break;
            
        }
        
        //2.1 else its just action_shoot_key
        else
        {
            key = 1;
            break;        
        }
    }
    
    n++;
}

//1.2 IF NO KEYS PRESSES WERE FOUND
//soft reset release key
release = 0;

if(n >= array_length_1d(keybinding_array))
{
    
    //3. CHECK TO SEE IF WE WERE CURRENTLY HOLDING
    if(hold == 1 || key == 1)
    {
        //3.1 WELL NOW ITS RELEASED
        release = 1;
        hold = 0;
    }
    
    key = 0;
}

output = 0;
output[0] = key;
output[1] = hold;
output[2] = release;
return output;
