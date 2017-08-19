if (npc != 2 and pressed = true) or (npc = 2)
{
    if speaker[type,speakerCurrent] != ""
    {
        draw_sprite_ext(sprite,speakerObject.image_index,view_xview[0] + 711.5,view_yview[0] + 44,speakerObject.image_xscale,speakerObject.image_yscale,0,c_white,speakerObject.image_alpha);
    }
    switch speaker[type,speakerCurrent]
    {
        case "Kid":
        {
            sprite = sprKidPortrait;
            if instance_exists(objPlayer)
            {
                speakerObject = objPlayer;
            }
            else
            {
                speakerObject = objKid;
            }
        }break;
        
        case "Vinilo":
        {
            sprite = sprViniloPortrait;
            speakerObject = objVinilo;
        }break;
    }
}

