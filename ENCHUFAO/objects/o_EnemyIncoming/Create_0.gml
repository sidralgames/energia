/// @description Insert description here
// You can write your code in this editor
if global.level <= 3
{
	enemy = choose(o_enemy, o_enemyFast)
}
else
{
	enemy = choose(o_enemy, o_enemyFast, o_enemyDisp, o_enemyMisil)
}

image_speed = 0.5;

