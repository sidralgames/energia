/// @description Insert description here
// You can write your code in this editor

with(o_enemyP)
{
	if (enemyWithLight)
	{
		off = random_range(0.05, -0.05);
		draw_sprite_ext(s_lightEnemyFront, 0, x, y, 1.25+off, 1.25+off, _angle, global.brightRed, 0.5 + off*2);
	}
}