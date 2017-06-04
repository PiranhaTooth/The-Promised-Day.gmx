///scr_dialog_action()
//does the action as specified in the selected action

var act = string(action[action_selected]);
if(act == 'NEXT' || act == '-1')
{

    if(goto[action_selected] == -1)
        npc.conversation += 1;
    else
        npc.conversation = goto[action_selected];
    scr_dialog_reset();
    with(npc) scr_dialog_start();
}
else if(act == 'STOP')
{
    if(goto[action_selected] == -1)
        npc.conversation += 1;
    else
        npc.conversation = goto[action_selected];
    scr_dialog_reset();
    npc = -1;
    global.dialog = 0;
}
else if(act == "QUIT")
{
    game_end();
}

