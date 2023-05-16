// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function CollisionTileDestroy()
{
	if (tile_meeting(x+_hpush,y,"Tiles"))
	{
	    instance_destroy();
	}
	if (tile_meeting(x,y+_vpush,"Tiles"))
	{
	   instance_destroy();
	}
}