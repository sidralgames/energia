/// @description Insert description here
// You can write your code in this editor

chechInScreen --;

if (chechInScreen <= 0)
{
	inScreen = point_in_rectangle(x,y,__view_get( e__VW.XView, 0 ) + 0,__view_get( e__VW.YView, 0 ) + 0, __view_get( e__VW.XView, 0 ) + 640,__view_get( e__VW.YView, 0 ) + 360) 

	chechInScreen = 30;
}


StatusConditionEnemy();


if (global.changingTiles)
{
	if tile_meeting(x,y,"Tiles")
	{
		_hp=0;
	}
}
