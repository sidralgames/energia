// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function CheckBatteryToDraw(argument0, argument1)
{
	mods = ds_map_find_value(argument0, 0)
	for (var i=0; i<upgradesBattery; i++)
	
	{
		
		xoffset = -15 + (i*15)
		yoffset = 30;
		var _c = dcos(_angle);
		var _s = dsin(_angle);
	
		var _x = x - xoffset * _c - yoffset * _s;

		var _y = y - xoffset * -_s - yoffset * _c;

		
		if (mods.bouncingBullets = true)
		{
			draw_sprite_ext(s_bouncingBulletsPicKUp, 0, _x,_y, 0.5,0.5, _angle, image_blend, image_alpha)		
		}
		if (mods.piercingBullets = true)
		{
			draw_sprite_ext(s_piercingBulletsPicKUp, 0,_x,_y, 0.5,0.5, _angle, image_blend, image_alpha)		
		}
		if (mods.smartBullets = true)
		{
			draw_sprite_ext(s_smartBulletsPicKUp, 0, _x,_y, 0.5,0.5, _angle, image_blend, image_alpha)					
		}
	
	}
	
}