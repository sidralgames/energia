// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function ExplosionsLightWhite()
{
	with(o_exploBomb)
	{
		off = random_range(0.05, -0.05);
		switch (isFrom)
		{
			case "PlayerBomb":
			{
				if (global.bombIsHomingBomb == false)
				{
					draw_sprite_ext(s_lightBulb4, 0, x, y, 1.2+off, 1.2+off, 0, c_white, 0.9 + off);
				}
				else
				{
					draw_sprite_ext(s_lightBulb4, 0, x, y, 0.3+off, 0.3+off, 0, c_white, 0.9 + off);
				}
			
			}break;
		
			case "EnemyBomb":
			{
				draw_sprite_ext(s_lightBulb4, 0, x, y, 0.75+off, 0.75+off, 0, c_white, 0.9 + off);
			
			}break;
		
		}
	}
}