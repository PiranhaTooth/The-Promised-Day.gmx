if distance_to_object(objPlayer) <= 6
{
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
    if instance_exists(objPlayer) and speaker[type,speakerCurrent] = "Kid"
    {
        xx = objPlayer.x - 6;
        yy = objPlayer.y - 12;
    }
}
