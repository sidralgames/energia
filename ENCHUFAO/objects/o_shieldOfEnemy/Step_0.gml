/// @description Insert description here
// You can write your code in this editor
if (contDiscount > 0)
{
	contDiscount --;
}
if (contDiscount <= 0)
{
	if (!discounted)
	{
		discounted = true;
		global.totalEnemiesOnLevel-=1;
	}
}

if instance_exists(enemy)
{
	x = enemy.x;
	y = enemy.y;
}
else
{
	instance_destroy();	
}

if (_hp <= 0)
{
	if instance_exists(enemy)
	{
		enemy.haveAShield = false;
	}
	instance_destroy();
}










