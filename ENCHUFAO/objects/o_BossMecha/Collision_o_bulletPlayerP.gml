/// @description Insert description here
// You can write your code in this editor
if point_distance(o_BossMecha_Inside.x,o_BossMecha_Inside.y,other.x, other.y) >20
{
	with(other)
	{
		if (hpBounce > 0)
		{
			if (place_meeting(x+hspeed,y,o_BossMecha))
			{
				hpBounce -=1;
			    hspeed = -hspeed*bnc;
			}
			if (place_meeting(x,y+vspeed,o_BossMecha))
			{
				hpBounce -=1;
			   vspeed = -vspeed*bnc;
			}
		}
		else
		{
			instance_destroy();
		}
	}
	
}





