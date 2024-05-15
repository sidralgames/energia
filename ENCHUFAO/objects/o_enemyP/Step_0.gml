/// @description Insert description here
// You can write your code in this editor

if instance_exists(o_playerShip)
{
	inScreen = point_distance(x,y,o_playerShip.x, o_playerShip.y) < global.offRangeDistance_Enemy;
}

StatusConditionEnemy();


if (global.changingTiles)
{
	if tile_meeting(x,y,"Tiles")
	{
		_hp=0;
	}
}
