/// @description Insert description here
// You can write your code in this editor
image_speed = 0.5;
canCreate = false;
randomize();
global.maxWorms = 0;
switch(global.level)
{
	case 1: EnemiesToSpawnLVL1(); break;
	case 3: EnemiesToSpawnLVL3(); break;
	case 5: EnemiesToSpawnLVL5(); break;
}










//if (global.level =1)
//{
//	enemy = choose(o_enemy,
//	o_enemy, o_enemyFast, o_enemyFastMini,
//	o_enemy, o_enemyFast, o_enemyFastMini,
//	o_enemy, o_enemyFast, o_enemyFastMini,
//	o_enemy, o_enemyFast, o_enemyFastMini,
//	o_enemy, o_enemyFast, o_enemyFastMini,
//	o_enemy, o_enemyFast, o_enemyFastMini,
//	o_enemy, o_enemyFast, o_enemyFastMini,
//	o_enemy, o_enemyFast, o_enemyFastMini,
//	o_enemy, o_enemyFast, o_enemyFastMini,
//	o_enemy, o_enemyFast, o_enemyFastMini,
//	o_enemy, o_enemyFast, o_enemyFastMini,
//	o_enemy, o_enemyFast, o_enemyFastMini,
//	o_enemy, o_enemyFast, o_enemyFastMini,
//	o_enemy, o_enemyFast, o_enemyFastMini,
//	o_enemy, o_enemyFast, o_enemyFastMini,
//	o_enemy, o_enemyFast, o_enemyFastMini,
//	o_enemyDisp,
//	o_enemyMitosis,o_enemyMitosis,o_enemyMitosis,
//	o_enemy_Waiting_Shield,
//	o_enemyMothership,
//	o_enemySniper,
//	o_enemyBomber,
//	o_enemyMines,
//	o_enemyDisc,
//	o_enemyMouth_Free)
//}
//else if (global.level =3)
//{
//	enemy = choose(
//	o_enemy, o_enemyFast, o_enemyFastMini,
//	o_enemy, o_enemyFast, o_enemyFastMini,
//	o_enemy, o_enemyFast,  o_enemyFastMini,
//	o_enemyDisp, o_enemyDisp,
//	o_enemy_Waiting_Shield, o_enemy_Waiting_Shield,
//	o_enemyShield_v2,
//	o_enemyMothership,
//	o_enemySniper,
//	o_enemyMitosis,
//	o_enemyBomber,
//	o_enemyMines,
//	o_enemyDisc,
//	o_enemyMouth_Free)
//}
//else if (global.level =5)
//{
//	enemy = choose(
//	o_enemy, o_enemyFast, o_enemyFastMini,
//	o_enemy, o_enemyFast, o_enemyFastMini,
//	o_enemyDisp, o_enemyDisp,
//	o_enemy_Waiting_Shield,
//	o_enemyShield_v2,
//	o_enemyMisil,
//	o_enemyMothership,
//	o_enemySniper,
//	o_enemyMitosis,
//	o_enemyBomber,
//	o_enemyMines,
//	o_enemyDisc,
//	o_enemyMouth_Free)
//}
//else if (global.level >5)
//{
//	enemy = choose(
//	o_enemy, o_enemyFast, o_enemyFastMini,
//	o_enemyDisp, o_enemyDisp, 
//	o_enemy_Waiting_Shield,
//	o_enemyShield_v2,
//	o_enemyMisil,
//	o_enemyMothership,
//	o_enemyTurret, o_enemySniper, o_enemySniper)
//}






