
//1.1 ERROR CHECK TO MAKE SURE STATE_CURRENT IS VALID
if(state_current > states.null && state_current < states.nullmax)
{

    //2. CHECK IF STATE NEEDS TO BE INITIALISED ON CHANGE
    // if so run the state_init function
    if(state_change == 1)
    {
        script_execute(state_init[state_current]);
        
        //reset the state_change variable
        state_change = 0;
    }
    
    //3. RUN THE CURRENT STATE STEP FUNCTION
    script_execute(state_step[state_current]);
    
    
    //4. CHECK IF A STATE_CHANGE HAS HAPPENED DURING THE SCRIPT
    // if so, run the state_end function.
    if(state_change == 1)
    {
        script_execute(state_end[state_previous]);
    }


}

//1.2 ELSE SOMETHING HAS GONE HELLA WRONG, - PAUSE QUICK!!!
else
{
    god_state_update(states.pause);
}
