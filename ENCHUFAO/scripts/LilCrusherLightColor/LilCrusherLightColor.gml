// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function LilCrusherLightColor()
{
	with(o_BossMecha)
	{
		off = random_range(0.05, -0.05);
		switch (state)
		{
			case BOSS2STATE.IDLE:
			{
				if (image_index = 0)
				{
					draw_sprite_ext(s_lightBulb4, 0, x, y-55, 0.1+off, 0.1+off, 0, global.yellow, 0.6 + off);
				}
				else
				{
					draw_sprite_ext(s_lightBulb4, 0, x, y-55, 0.2+off, 0.2+off, 0, global.brightRed, 0.6 + off);
					
				}
			}break;
			
			case BOSS2STATE.ATTACK: 
			{
				draw_sprite_ext(s_lightBulb4, 0, x, y-55, 0.2+off, 0.2+off, 0, global.brightRed, 0.6 + off);
				
			}break;
		}
	}
	
	
	with (o_BossMecha_Inside)
	{
		if (o_BossMecha.state != BOSS2STATE.START)
		{
			off = random_range(0.02, -0.02);
			draw_sprite_ext(s_lightBulb4, 0, x, y+8, 0.05+off, 0.05+off, 0, global.lightBlue, 0.6 + off);
		}
	}
	
	with (o_bullet_BossGarbanzo_AttackFast)
	{
		off = random_range(0.02, -0.02);
		draw_sprite_ext(s_lightBulb4, 0, x, y, 0.1+off, 0.1+off, 0, global.brightRed, 0.2 + off);
	}
	
	with (o_bullet_BossGarbanzo_AttackFastBomb)
	{
		off = random_range(0.02, -0.02);
		draw_sprite_ext(s_lightBulb4, 0, x, y, 0.1+off, 0.1+off, 0, global.brightRed, 0.2 + off);
	}
}
