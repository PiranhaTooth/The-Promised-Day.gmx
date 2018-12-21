with objBlock
{
    if idd != 0
    {
        with objTorchHolder
        {
            if idd = other.idd and lit = true
            {
                if instance_exists(objTorchHolder2) and objTorchHolder2.lit = true
                {
                    with objBlock
                    {
                        if idd = other.idd
                        {
                            if appear = false
                            {
                                instance_destroy();
                            }
                            else
                            {
                                x = targetX;
                                y = targetY;
                            }
                        }
                    }
                }
                else
                {
                    with objBlock
                    {
                        if idd = other.idd
                        {
                            if appear = false
                            {
                                instance_destroy();
                            }
                            else
                            {
                                x = targetX;
                                y = targetY;
                            }
                        }
                    }
                }
            }
        }
    }
}
