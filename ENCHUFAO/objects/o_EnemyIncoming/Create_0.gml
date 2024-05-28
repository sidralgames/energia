/// @description Insert description here
// You can write your code in this editor
randomize();

image_speed = 0.5;

canCreate = false;
canCreateBreach = false;

global.maxWorms = 0;

if (room = Sala_BossWorm)
{
	EnemiesToSpawn_WormBossRoom();
}
else if (room = Sala_Tutorial)
{
	if (o_tutorialText.bombCreated)
	{
		enemy = choose(o_enemySniper,o_enemy, o_enemyFast, o_enemy, o_enemyFast, o_enemy, o_enemyFast, o_enemy, o_enemyFast)
	}
	else
	{
		enemy = choose(o_enemy, o_enemyFast)
	}
}
else
{
	if (global.level = 1)
	{
		EnemiesToSpawnLVL1();
	}
	else if (global.level = 3)
	{
		EnemiesToSpawnLVL3();
	}
	else if (global.level = 5)
	{
		EnemiesToSpawnLVL5();
	}
	else if (global.level >= 7)
	{
		EnemiesToSpawnLVL7To9();
	}
}