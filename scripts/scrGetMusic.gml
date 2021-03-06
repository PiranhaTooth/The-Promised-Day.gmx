///gets which song is supposed to be playing for the current room and plays it

var roomSong;

switch (room)                       //determines which song to play
{                  
    case rMenu:                     //add rooms here, if you have several rooms that play the same song they can be put together
    case rOptions:
    case rDifficultySelect:
        roomSong = musMenu;
        break;
        
    case rOpeningCinematics:
        roomSong = musClaraTheme;
        break;
        
    case r1Beach:
    case r2Beach:
    case r3Beach:
    case r4Beach:
    case rBoss1EndCutscene:
        roomSong = musBeach;
        break;
        
    case rBeachTown:
        roomSong = musBeachTown;
        break;
        
    case r1Grasslands:
    case r2Grasslands:
    case r3Grasslands:
    case r4Grasslands:
    case r5Grasslands:
    case r6Grasslands:
    case r7Grasslands:
    case r8Grasslands:
    case r9Grasslands:
    case r10Grasslands:
    case r11Grasslands:
    case r12Grasslands:
    case rBossGrasslands:
    case rBossGrasslandsCutscene1:
    case rGrassDesertTransition:
    case rGrassDesertTransition2:
    case rGrassDesertTransition3:
        roomSong = musGrasslands;
        break;
       
    case rWastelands1:
    case rWastelands2:
    case rWastelands3:
    case rWastelands4:
    case rWastelands5:
    case rWastelands6:
    case rWastelands7:
    case rWastelands8:
    case rWastelands9:
    case rWastelands10:
        roomSong = musWastelands;
        break;
                 
    case rDesertTown:
        roomSong = musDesertTown;
        break;
    default:                        //default option in case the room does not have a song set
        roomSong = -1;
        break;
}

if roomSong != -2
{
    scrPlayMusic(roomSong,true); //play the song for the current room
}
