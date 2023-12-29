/// @description Insert description here
// You can write your code in this editor


if (global.breachBanner)
{
	draw_sprite_ext(s_breachBanner,image_index,__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+180,1,1,0,image_blend, 0.5)	
}
else
{
	instance_destroy();
}


