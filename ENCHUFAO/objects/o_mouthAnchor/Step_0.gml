/// @description Insert description here
// You can write your code in this editor
if (global.changingTiles)
{
	alarm[0] = 60;
}

if (alarm[0] > 0)
{
	if !tile_meeting(x,y,"Tiles")
	{
		instance_destroy();
	}
}






