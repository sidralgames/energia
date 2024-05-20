/// @description Insert description here
// You can write your code in this editor

CheckInScreen(50, 30)


StatusConditionEnemy();


if (global.changingTiles)
{
	if tile_meeting(x,y,"Tiles")
	{
		_hp=0;
	}
}

if (_hp <= 0)
{
	killedByPlayer = true;
}