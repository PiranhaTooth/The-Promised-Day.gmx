messageDraw = "";
characters = 0;

messageCurrent = 0;              
questionCurrent = 0;
actionCurrent = 0;
speakerCurrent = 0;
type = 0;
hold = false;

response = 0;
pressed = false;
select = 1;
characterReset = false;  
if instance_exists(objPlayer)
{        
    objPlayer.frozen = 0;
}
   
if interact = false
{
    interact = true;
}
