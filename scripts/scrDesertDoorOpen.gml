if instance_exists(objPlayer) and global.desertDoorOpened[idd] == false
{
    with objPlayer
    {
        if distance_to_object(objBlock) <= 1
        {
            frozen = true;
        }
    }
}
if idd == other.idd
{
    if timer < 52
    {
        timer += 1;
    }
    if timer >= 50
    {     
        if soundPlayed == false
        {
            if !audio_is_playing(sndDesertDoorOpening)
            {
                audio_play_sound(sndDesertDoorOpening,10,false);
                soundPlayed = true;
            }
            else
            {
                soundPlayed = true;
            }
        }     
        if point_distance(xstart,ystart,x,y) < 64
        {
            scrScreenShake(64,1);
            if up == 1
            {
                y -= 1;
            }
            if down = 1
            {
                y += 1;
            }
            if left = 1
            {
                x -= 1;
            }
            if right = 1
            {
                x += 1;
            }
        }
        else if dustDone == false
        {
            if up == true
            {
                repeat(24)
                {
                    part_particles_create(partDoorDustUpSys,irandom_range(x,x+64),y+64,partDoorDustUp,1);
                }
            }
            if down == true
            {
                repeat(24)
                {
                    part_particles_create(partDoorDustDownSys,irandom_range(x,x+64),y,partDoorDustDown,1);
                }
            }
            if left == true
            {
                repeat(24)
                {
                    part_particles_create(partDoorDustLeftSys,x+64,irandom_range(y,y+64),partDoorDustLeft,1);
                }
            }
            if right == true
            {
                repeat(24)
                {
                    part_particles_create(partDoorDustRightSys,x,irandom_range(y,y+64),partDoorDustRight,1);
                }
            }
            scrDesertBlockDestroy();
            global.desertDoorOpened[idd] = true;
            dustDone = true;
            if instance_exists(objPlayer)
            {
                objPlayer.frozen = false;
            }
            
        }
    }
}
