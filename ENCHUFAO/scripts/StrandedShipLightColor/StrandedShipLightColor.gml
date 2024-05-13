// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function StrandedShipLightColor()
{
	with(o_strandedShip)
	{
		if (!chargedInHp) || (!chargedInEnergy) || (!chargedInAmmo)
		{
			contLight --;
		
			off = random_range(0.02, -0.02);
			if (contLight <= 10)
			{
				draw_sprite_ext(s_lightBulb4, 0, x+lengthdir_x(5, _angle+90), y+lengthdir_y(5, _angle+90), 0.05+off, 0.05+off, 0, global.lightBlue, 0.5 + off);
			}
			else
			{
				draw_sprite_ext(s_lightBulb4, 0, x+lengthdir_x(5, _angle-90), y+lengthdir_y(5, _angle-90), 0.05+off, 0.05+off, 0, global.brightRed, 0.5 + off);
			}
			if (contLight <= 0)
			{
				contLight = 20;
			}
		}
	}
}