///scrScreenShake( length , magnitude )
///shakes the screen
///argument0 - length
///argument2 - magnitude

global.shakeLength = argument0;
global.shakeMagnitude = argument1;

if !instance_exists(objScreenShake)
{
    instance_create(0,0,objScreenShake);
}
