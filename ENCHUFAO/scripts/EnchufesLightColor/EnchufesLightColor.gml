// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function EnchufesLightColor()
{
	with(o_enchufeStandard_Father)
	{
		if (soundActive)
		{
			offs = random_range(0.05, -0.05);
		
			draw_sprite_ext(s_lightBulb6, 0, x, y, 0.25+offs, 0.25+offs, 0, global.lightBlue, 0.3+offs);
		}
	}
	

	with(o_enchufeBombs)
	{
		offs = random_range(0.05, -0.05);
		draw_sprite_ext(s_lightBulb6, 0, x, y, 0.15+offs, 0.15+offs, 0, global.lightBlue, 0.2+offs);
	}

	with(o_enchufePETA_Father)
	{
		offs = random_range(0.05, -0.05);
		draw_sprite_ext(s_lightBulb6, 0, x, y, 0.1+offs, 0.1+offs, 0, global.lightBlue, 0.2+offs);
	}
}