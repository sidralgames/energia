// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function EnemiesLightColor()
{
	with(o_enemyP)
	{
		if (inScreen)
		{
			if (enemyWithLight = true)
			{
				if (enemyIsMini)
				{
					off = random_range(0.05, -0.05);
					draw_sprite_ext(s_lightEnemyFront, 0, x, y, 0.75, 0.75, _angle, global.brightRed, 0.3);
				}
				else
				{
					off = random_range(0.05, -0.05);
					draw_sprite_ext(s_lightEnemyFront, 0, x, y, 1.5, image_yscale, _angle, global.brightRed, 0.3);
				}
			}
		}
	}

	with(o_enemyDisc)
	{
		if (state != 0)
		{
			off = random_range(0.02, -0.02);
		
			if (alphaLight <= 0.4)
			{
				alphaLight +=0.004;
			}
		
			draw_sprite_ext(s_lightBulb4, 0, x, y, 0.08+off, 0.08+off, 0, global.brightRed, alphaLight + off);
		}
		else
		{
			if (alphaLight >= 0)
			{
				off = random_range(0.02, -0.02);
				alphaLight -=0.003;
				draw_sprite_ext(s_lightBulb4, 0, x, y, 0.08+off, 0.08+off, 0, global.brightRed, alphaLight + off);
			}
		}
	}
	
	with (o_bulletEnemy_Father)
	{
		off = random_range(0.02, -0.02);
		draw_sprite_ext(s_lightBulb4, 0, x, y, 0.08+off, 0.08+off, 0, global.brightRed, 0.1 + off);
	}

}