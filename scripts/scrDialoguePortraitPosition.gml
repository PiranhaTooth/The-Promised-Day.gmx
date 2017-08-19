if (place_meeting(x,y,objPlayer) and npc != 2 and speaker[type,speakerCurrent] != "") or (npc = 2 and speaker[type,speakerCurrent] != "")
{
    maxLength = 635;
    if interact = false
    {
        view_visible[1] = true;
    }
    if interact = true
    {
        view_visible[1] = false;
    }
    
    view_xview[1] = xx;
    view_yview[1] = yy;
    
    view_wview[1] = 12;
    view_hview[1] = 12;
    
    view_xport[1] = view_xport[0] + 664;
    view_yport[1] = (textboxHeight / 2) - 36;
    
    view_wport[1] = 96;
    view_hport[1] = 96;
    /*
    if instance_exists(objPlayer) and speaker[type,speakerCurrent] = "Kid"
    {
        xx = objPlayer.x - 6;
        yy = objPlayer.y - 12;
    }
    */
}
else if speaker[type,speakerCurrent] = ""
{
    maxLength = 760;
    view_visible[1] = false;
}
