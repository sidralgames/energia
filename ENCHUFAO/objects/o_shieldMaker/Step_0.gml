/// @description Insert description here
// You can write your code in this editor

if instance_exists(enemy)
{
	x = enemy.x;
	y = enemy.y;
}
else
{
	instance_destroy();
}

if (cont>=2)
{
	instance_destroy();	
}



