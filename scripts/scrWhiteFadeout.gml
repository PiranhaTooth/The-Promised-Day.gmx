var deleted = false;

objTextbox.count += 1;

if !instance_exists(objWhiteFadeout) and deleted = false
{
    instance_create(0,0,objWhiteFadeout);
    deleted = true;
    
}

if !instance_exists(objWhiteFadeout) and deleted = true
{
    objTextbox.actionComplete = true;
}
