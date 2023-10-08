// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function CollisionTileBounce()
{
	if (tile_meeting(x+hspeed,y,"Tiles"))
	{
		hpBounce -=1;
	    hspeed = -hspeed*bnc;
	}
	if (tile_meeting(x,y+vspeed,"Tiles"))
	{
		hpBounce -=1;
	   vspeed = -vspeed*bnc;
	}
}