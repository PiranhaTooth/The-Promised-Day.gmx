for (var i = 0; i < 8; i++)
{
    with scrSelect(i, objSpikeUp,objSpikeDown,objSpikeLeft,objSpikeRight,objShortSpikeUp,objShortSpikeDown,objShortSpikeLeft,objShortSpikeRight) 
    {
        triggered = true;
        switch dist
        {
            case 0:
            {
                dist = setDist;
            }
            break;
            case setDist:
            {
                dist = 0;
            }
            break;
        }
    }
}
