if npc = 1
{
    if speaker[type,speakerCurrent] = "" and speakerCurrent != 0
    {
        speaker[type,speakerCurrent] = speaker[type,speakerCurrent - 1];
    }
    if place_meeting(x,y,objPlayer) and keyboard_check_pressed(vk_up)
    {
        pressed = true
        objPlayer.frozen = true;
        interact = false;
    }
    if pressed = true
    {
        if objPlayer.x < x
        {
            image_xscale = -1;
        }
        else
        {
            image_xscale = 1;
        }
        if characters <= string_length(message[type,messageCurrent]) and response = 0 and wait = waitMax
        {
            hold = keyboard_check(vk_shift);
            characters += increase + (1 * hold);
            messageDraw = string_copy(message[type,messageCurrent],1,characters);
            if shh = 0
            {
                if string_char_at(message[type,messageCurrent],characters) != " "
                {
                    audio_play_sound(sndDialogue,10,0);
                }
            }
        }
        if characters > string_length(message[type,messageCurrent])
        {
            if keyboard_check_pressed(vk_shift)
            {
                if action[type,actionCurrent] = true
                {
                    if characters >= string_length(message[type,messageCurrent])  and actionComplete = false
                    {  
                        if !instance_exists(actionObject[type,objectCurrent]) 
                        {                
                            instance_create(x,y,actionObject[type,objectCurrent]); 
                        }  
                    }
                    if actionComplete = true
                    {
                        with actionObject[type,objectCurrent]
                        {
                            instance_destroy();
                        }
                        if messageCurrent < messageEnd[type]
                        {
                            scrTextboxNext();
                        }
                        else
                        {
                            scrTextboxCleanup();
                            pressed = false;
                        }
                    }
                }
                else
                {
                    if messageCurrent < messageEnd[type]
                    {
                        scrTextboxNext();
                    }                
                    else
                    {
                        scrTextboxCleanup();
                        pressed = false;
                    }
                }
            }
        }           
    }
}

