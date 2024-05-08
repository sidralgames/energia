// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ExplosionsLightColor()
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
					draw_sprite_ext(s_lightBulb4, 0, x, y, 0.75+off, 0.75+off, 0, global.lightBlue, 0.2 + off);
				}
				else
				{
					draw_sprite_ext(s_lightBulb4, 0, x, y, 0.3+off, 0.3+off, 0, global.lightBlue, 0.3 + off);
				}
			
			}break;
		
			case "EnemyBomb":
			{
				draw_sprite_ext(s_lightBulb4, 0, x, y, 0.5+off, 0.5+off, 0, global.brightRed, 0.2 + off);
			
			}break;
		
		}
	}
}