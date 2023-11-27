/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
if (tile_meeting(x-lengthdir_x(bulletSpeed, direction),y-lengthdir_y(bulletSpeed, direction),"Tiles"))
{
	anchor = instance_create_layer(x+lengthdir_x(bulletSpeed+12, direction),y+lengthdir_y(bulletSpeed+12, direction),"EnemiesHUE",o_mouthAnchor);
	enemy = instance_create_layer(x-lengthdir_x(7, direction),y-lengthdir_y(7, direction),"EnemiesHUE",o_enemy_Mouth);
	
	if instance_exists(enemy)
	{
		anchor.enemyBelong = enemy;
		enemy.diffYFar = -10;
		enemy.fromBullet=true;
	}
	else
	{
		instance_destroy(anchor)
	}
	
	if instance_exists(anchor)
	{
		with(anchor)
		{
			if !tile_meeting(x,y,"Tiles")
			{
				instance_destroy();
			}
		}
	}
	
	if !instance_exists(anchor)
	{
		if instance_exists(enemy)
		{
			enemy.died = true;
		}
		instance_destroy(enemy)
	}
	
	instance_destroy();
}


speed = bulletSpeed * global.relativeSpeed;
	
//if (contPart>0)
//{
//	contPart--
//}
//if (contPart <= 0)
//{
	
//	part_particles_create(global.balaMouth_sys, x, y, global.balaMouth , 1);
//	contPart = 2;
//}