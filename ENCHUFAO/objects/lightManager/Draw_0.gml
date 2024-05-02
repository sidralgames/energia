/// @description Insert description here
// You can write your code in this editor

with(o_enchufeStandard_Father)
{
	if (soundActive)
	{
		offs = random_range(0.05, -0.05);
		
		draw_sprite_ext(s_lightBulb6, 0, x, y, 0.3+offs, 0.3+offs, 0, global.lightBlue, 0.2+offs);
	}
}




