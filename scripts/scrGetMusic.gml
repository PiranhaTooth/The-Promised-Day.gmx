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
        roomSong = musBeach;
        break;
    case rBeachTown:
        roomSong = musBeachTown;
        break;
    default:                        //default option in case the room does not have a song set
        roomSong = -1;
        break;
}

if (roomSong != -2)
    scrPlayMusic(roomSong,true); //play the song for the current room
