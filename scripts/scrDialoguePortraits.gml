if place_meeting(x,y,objPlayer)
{
    if instance_exists(objPlayer)
    {
        // The Kid
        if speaker[type,speakerCurrent] = "Kid"
        {
            with objPlayer
            {
                draw_self();
            }
            xx = objPlayer.x - 6;
            yy = objPlayer.y - 12;
        }
        else
        {
            //do nothing
        }
        
        // Sam
        if view_current = 1
        {
            if speaker[type,speakerCurrent] = "Sam"
            {
                with objSam
                {
                    draw_self();
                }
                xx = objSam.x - 6;
                yy = objSam.y - 12;
            }
            else
            {
                //do nothing
            }
            
            // Vinilo
            if speaker[type,speakerCurrent] = "Vinilo"
            {
                with objVinilo
                {
                    draw_self();
                }
                xx = objVinilo.x - 6;
                yy = objVinilo.y - 12;
            }
            else
            {
                //do nothing
            }
    
            //Bizzle
            if speaker[type,speakerCurrent] = "Bizzle"
            {
                with objBizzle
                {
                    draw_self();
                }
                xx = objBizzle.x - 6;
                yy = objBizzle.y - 12;
            }
            else
            {
                //do nothing
            }
        }
    }
}
