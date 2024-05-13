// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function LilCrusherLightWhite()
{
	with(o_BossMecha)
	{
		if (state != BOSS2STATE.START)
		{
			off = random_range(0.05, -0.05);
			draw_sprite_ext(s_lightBulb4, 0, x, y-55, 0.5+off, 0.5+off, 0, c_white, 0.5 + off);
		}
	}
	
	with (o_bullet_BossGarbanzo_AttackFast)
	{
		off = random_range(0.02, -0.02);
		draw_sprite_ext(s_lightBulb4, 0, x, y, 0.23+off, 0.23+off, 0, c_white, 0.3 + off);
	}
	
	with (o_bullet_BossGarbanzo_AttackFastBomb)
	{
		off = random_range(0.02, -0.02);
		draw_sprite_ext(s_lightBulb4, 0, x, y, 0.23+off, 0.23+off, 0, c_white, 0.3 + off);
	}
}