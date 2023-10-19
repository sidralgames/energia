/// @description Insert description here
// You can write your code in this editor
canCreate = false;
randomize();
if (global.level =1)
{
	enemy = choose(
	o_enemy, o_enemyFast, o_enemyFastMini,
	o_enemyMisil)
}
else if (global.level =3)
{
	enemy = choose(
	o_enemy, o_enemyFast, o_enemyFastMini,
	o_enemy, o_enemyFast, o_enemyFastMini,
	o_enemy, o_enemyFast,  o_enemyFastMini,
	o_enemyDisp, o_enemyDisp,
	o_enemy_Waiting_Shield, o_enemy_Waiting_Shield,
	o_enemyShield_v2,
	o_enemyMothership)
}
else if (global.level =5)
{
	enemy = choose(
	o_enemy, o_enemyFast, o_enemyFastMini,
	o_enemy, o_enemyFast, o_enemyFastMini,
	o_enemyDisp, o_enemyDisp,
	o_enemy_Waiting_Shield,
	o_enemyShield_v2,
	o_enemyMisil,
	o_enemyMothership)
}
else if (global.level >5)
{
	enemy = choose(
	o_enemy, o_enemyFast, o_enemyFastMini,
	o_enemyDisp, o_enemyDisp, 
	o_enemy_Waiting_Shield,
	o_enemyShield_v2,
	o_enemyMisil,
	o_enemyMothership,
	o_enemyTurret)
}

image_speed = 0.5;

