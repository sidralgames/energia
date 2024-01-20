/// @description Insert description here
// You can write your code in this editor
if (inEnemy)
{
	draw_sprite_ext(sprite_index, image_index, x,y,0.6, 0.6, image_angle-90, image_blend, image_alpha)
}
else if (inCapsule)
{
	draw_sprite_ext(sprite_index, image_index, x,y,0.7, 0.7, image_angle, image_blend, image_alpha)
}
else
{
	draw_sprite_ext(sprite_index, image_index, x,y,image_xscale, image_yscale, _angle, image_blend, image_alpha)
}

if instance_exists(overBattery)
{
	if (overBattery) && (o_playerShip.haveBatteryUpgrade == false)
	{
		if (radi > 12)
		{
			radi-=0.15;
		}
		else
		{
			radi = 16;
		}
	
		draw_set_color(c_white)
		draw_circle(x, y, radi+0.5, true)
		draw_circle(x, y, radi, true)
		draw_circle(x, y, 12, true)
		draw_circle(x, y, 12.3, true)
	}
}







