/// @description Insert description here
// You can write your code in this editor
if instance_exists(o_playerShip)
{
	if (instance_exists(o_shockwaveTiles) || (o_playerShip.laserActive == true) )
	{
		alarm[0] = 10;
		destroying = true
	}

	if (destroying)
	{
		if !tile_meeting(x,y,"Tiles")
		{
			instance_destroy();
		}
	}
}







