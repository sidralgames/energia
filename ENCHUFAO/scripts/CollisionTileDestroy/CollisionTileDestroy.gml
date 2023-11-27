// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function CollisionTileDestroy()
{
	if (tile_meeting(x+hspeed,y,"Tiles"))
	{
	    instance_destroy();
	}
	if (tile_meeting(x,y+vspeed,"Tiles"))
	{
	   instance_destroy();
	}
	
}