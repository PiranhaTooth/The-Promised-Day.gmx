///scrDropExp(AmountOfOrbs)
///drops exp orbs
///argument0 - amount of orbs to drop

repeat(argument0)
{
    instance_create(x,y,objExpOrb);
}
