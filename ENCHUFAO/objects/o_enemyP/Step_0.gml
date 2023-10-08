/// @description Insert description here
// You can write your code in this editor
if (global.changingTiles)
{
	if tile_meeting(x,y,"Tiles")
	{
		_hp=0;
	}
	
}

if (repelled = true)
{
	_angle = -_angle;
	repelledTime--;
	if (repelledTime <= 0)
	{
		repelled = false;
		repelledTime = repelledTimeMax;
	}
}

checkHPEnemies();




