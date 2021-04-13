///combo_add(normal/perfect)

var perfect = argument[0];

//check if combo is first one
if(combo_active == false)
{
    combo_active = true;
    combo_current=0;
    
    //if perfect make the combo perfect
    if(perfect == 1)
    {
        combo_perfect=1;
    }
}

//add to the current combo
combo_current += 1;

//check if added value is perfect
if(perfect = 0 && combo_perfect==1)
{
    //break combo_perfect
    combo_perfect = 0;
}

//ADD TO COMBO MAX IF RELEVENT
if(combo_current > combo_max)
{
    combo_max = combo_current;
}

if(combo_current > combo_max_perfect && combo_perfect == 1)
{
    combo_max_perfect = combo_current;
}
