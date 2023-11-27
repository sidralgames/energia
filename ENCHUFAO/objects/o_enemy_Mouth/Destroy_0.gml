/// @description Insert description here
// You can write your code in this editor
if (died = false)
{
	CreateSlowmoParts();
	global.enemiesKilled+=1;
	global.enemiesKilledTotalAch+=1;
}

instance_destroy(cable);


if (isCounted == true)
{
	global.enemies -=1;
}

global.totalEnemiesOnScreen-=1;

// Inherit the parent event

