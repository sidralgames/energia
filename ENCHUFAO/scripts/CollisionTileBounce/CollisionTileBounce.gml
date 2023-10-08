// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function CollisionTileBounce()
{
	if (tile_meeting(x+_hpush,y,"Tiles"))
	{
		hpBounce -=1;
	    _hpush = -_hpush*bnc;
	}
	if (tile_meeting(x,y+_vpush,"Tiles"))
	{
		hpBounce -=1;
	   _vpush = -_vpush*bnc;
	}
}