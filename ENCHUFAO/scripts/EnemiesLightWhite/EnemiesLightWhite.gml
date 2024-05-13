// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function EnemiesLightWhite()
{
	//----- ENEMIES GENERAL ----//
	with(o_enemyP)
	{
		off = random_range(0.02, -0.02);
		
		
		if (enemyWithLight = true)
		{
			if (enemyIsMini)
			{
				draw_sprite_ext(s_lightEnemyFront, 0, x, y, 0.75, 0.75, _angle, c_white, 0.5);
			}
			else
			{
				draw_sprite_ext(s_lightEnemyFront, 0, x, y, 1.5, image_yscale, _angle, c_white, 0.5);
			}
		}
		
		if (enemyWithLightBulb = true)
		{
			draw_sprite_ext(s_lightBulb4, 0, x, y, 0.2+off, 0.2+off, 0, c_white, 0.3 + off);
		}
	}
	
	//----- DISC ----//
	with(o_enemyDisc)
	{
		if (state != 0)
		{
			off = random_range(0.02, -0.02);
		
			if (alphaLight <= 0.5)
			{
				alphaLight +=0.004;
			}
		
			draw_sprite_ext(s_lightBulb4, 0, x, y, 0.08+off, 0.08+off, 0, c_white, alphaLight + off);
		}
		else
		{
			if (alphaLight >= 0)
			{
				off = random_range(0.02, -0.02);
				alphaLight -=0.003;
				draw_sprite_ext(s_lightBulb4, 0, x, y, 0.08+off, 0.08+off, 0, c_white, alphaLight + off);
			}
		}
	}

	with (o_bulletDisc)
	{
		off = random_range(0.01, -0.01);
		draw_sprite_ext(s_lightBulb4, 0, x, y, 0.08+off, 0.08+off, 0, c_white, 0.3 + off);
	}
	
	//----- TORRETAS ----//
	with(o_torreta)
	{
		off = random_range(0.02, -0.02);
	
		draw_sprite_ext(s_lightBulb4, 0, x, y, 0.5+off, 0.5+off, 0, c_white, 0.5 + off);
	}

	//----- CHIP MIMIC ----//
	with(o_enemyChipMimic)
	{
		off = random_range(0.02, -0.02);
		draw_sprite_ext(s_lightBulb4, 0, x, y, 0.25+off, 0.25+off, 0, c_white, 0.5 + off);
	}
}