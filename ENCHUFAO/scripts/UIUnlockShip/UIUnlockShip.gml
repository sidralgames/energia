// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function UIUnlockShip()
{
	if (alarm[2]>0)
	{
		draw_sprite_ext(s_ship_unlocked,0,__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+120,1,1,0,image_blend, image_alpha);
	}
}