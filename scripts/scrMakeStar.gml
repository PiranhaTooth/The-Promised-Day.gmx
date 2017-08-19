///scrMakeStar(x,y,outer radius,inner radius,lines amount,apples per line,angle,speed,burst,object);
//argument0 = center x, or where the star is built around.
//argument1 = center y, or where the star is built around.
//argument2 = how far outward the star goes in pixels.
//argument3 = how far outward the star's caves go, in pixels.
//argument4 = how many points the star has.
//argument5 = how many apples are put in between each line.
//argument6 = the offset angle of the star.
//argument7 = er of the apples.the speed multipli
//argument8 = whether the apples start in their normal positions or exactly at the center positions.
//argument9 = object used

for(i=0;i<argument4;i+=1){
        angle=(360/argument4*i)+argument6;
        angle2=(360/argument4*(i+0.5))+argument6;
        p1x=argument0+(argument2*sin(degtorad(angle)));
        p1y=argument1+(argument2*cos(degtorad(angle)));
        p2x=argument0+(argument3*sin(degtorad(angle2)));
        p2y=argument1+(argument3*cos(degtorad(angle2)));
        for(amt=0;amt<=argument5;amt+=1){
                vertical=(p2x-p1x);
                if vertical!=0{
                        slope=(p2y-p1y)/(p2x-p1x);
                        slopex=(p2x-p1x)*(1/argument5*amt);
                        slopey=slopex*slope;
                }
                else{
                        slopex=0;
                        slopey=(p2y-p1y)/argument5*amt;
                }
                a=instance_create(p1x+slopex,p1y+slopey,argument9);
                a.direction=point_direction(argument0,argument1,a.x,a.y);
                a.speed=point_distance(argument0,argument1,a.x,a.y)/point_distance(p1x,p1y,argument0,argument1)*argument7;
                if argument8=1{
                        a.x=argument0;
                        a.y=argument1;
                }
        }
        angle2=(360/argument4*(i-0.5))+argument6;
        p2x=argument0+(argument3*sin(degtorad(angle2)));
        p2y=argument1+(argument3*cos(degtorad(angle2)));
        for(amt=0;amt<argument5;amt+=1){
                if amt!=0 && amt!=argument5{
                        vertical=(p2x-p1x);
                        if vertical!=0{
                                slope=(p2y-p1y)/(p2x-p1x);
                                slopex=(p2x-p1x)*(1/argument5*amt);
                                slopey=slopex*slope;
                        }
                        else{
                                slopex=0;
                                slopey=(p2y-p1y)/argument5*amt;
                        }
                        a=instance_create(p1x+slopex,p1y+slopey,argument9);
                        a.direction=point_direction(argument0,argument1,a.x,a.y);
                        a.speed=point_distance(argument0,argument1,a.x,a.y)/point_distance(p1x,p1y,argument0,argument1)*argument7;
                        if argument8=1{
                                a.x=argument0;
                                a.y=argument1;
                        }
                }
        }
}
