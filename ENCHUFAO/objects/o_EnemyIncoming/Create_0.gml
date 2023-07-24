/// @description Insert description here
// You can write your code in this editor
canCreate = false;

if (global.level =1)
{
	enemy = choose(o_enemy, o_enemyFast)
}
else if (global.level =3)
{
	enemy = choose(o_enemy, o_enemyFast, o_enemyDisp, o_enemy_Waiting_Shield)
}
else if (global.level =5)
{
	enemy = choose(o_enemy, o_enemyFast, o_enemyDisp, o_enemyMisil, o_enemy_Waiting_Shield,
	o_enemy, o_enemyFast, o_enemyDisp, o_enemyMisil, o_enemy_Waiting_Shield, o_enemyTurret)
}

image_speed = 0.5;

