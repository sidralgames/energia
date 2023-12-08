/// @description Insert description here
// You can write your code in this editor
if instance_exists(o_playerShip)
{
	if ( (instance_exists(o_shockwaveTiles)) || (o_playerShip.laserActive == true)
	|| (global.changingTiles) )
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
	
	if !instance_exists(enemyBelong)
	{
		instance_destroy();
	}
	
	if (alarm[1] > 0)
	{
		if !tile_meeting(x,y,"Tiles")
		{
			instance_destroy();
		}
	}
}







