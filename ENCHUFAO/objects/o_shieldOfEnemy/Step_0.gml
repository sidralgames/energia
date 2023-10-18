/// @description Insert description here
// You can write your code in this editor
if instance_exists(enemy)
{
	x = enemy.x;
	y = enemy.y;
}

if (_hp <= 0)
{
	enemy = instance_nearest(x,y,o_enemyP);
	if instance_exists(enemy)
	{
		enemy.haveAShield = false;
	}
	instance_destroy();
}








