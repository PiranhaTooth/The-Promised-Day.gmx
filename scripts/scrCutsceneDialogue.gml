if interact = true
{
    if instance_exists(objPlayer)
    {
        objPlayer.frozen = 1
    }
    if characters <= string_length(message[messageCurrent]) and response = 0 and wait = waitMax
    {
        hold = keyboard_check(vk_control);
        characters += increase + (1 * hold);
        messageDraw = string_copy(message[messageCurrent],1,characters);
        if shh = 0
        {
            if string_char_at(message[messageCurrent],characters) != " "
            {
                audio_play_sound(sndDialogue,10,0);
            }
        }
    }
    if characters >= string_length(message[messageCurrent])
    {
        if keyboard_check_pressed(vk_control)
        {
            if action[actionCurrent] = true
            {
                if characters >= string_length(message[messageCurrent])  and actionComplete = false
                {  
                    if !instance_exists(object[objectCurrent]) 
                    {                
                        instance_create(x,y,object[objectCurrent]); 
                    }  
                }
                if actionComplete = true
                {
                    if question[questionCurrent] = true
                    {
                        scrDialogueOptions();
                    }
                    else
                    {
                        with object[objectCurrent]
                        {
                            instance_destroy();
                        }
                        if messageCurrent < messageEnd
                        {
                            scrTextboxNext();
                        }
                        else
                        {
                            scrTextboxCleanup();
                        }
                    }
                }
            }
            else
            {
                if question[questionCurrent] = true
                {
                    scrDialogueOptions();
                }
                else
                {
                    if messageCurrent < messageEnd
                    {
                        scrTextboxNext();
                    }                
                    else
                    {
                        scrTextboxCleanup();
                    }
                }
            }
            if messageReset = true
            {
                messageReset = false;
                interact = false;
                if instance_exists(objPlayer) and objPlayer.frozen = 1
                {
                    objPlayer.frozen = 0;
                }
            }
        }
    }
}