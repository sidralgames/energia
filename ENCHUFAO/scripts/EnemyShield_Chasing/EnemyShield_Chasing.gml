// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function EnemyShield_Chasing()
{
	part_particles_create(global.naveEnemy_Waiting_sys, x-lengthdir_x(8,direction), y-lengthdir_y(8,direction), global.naveEnemy_Waiting , 1)
	if (alarm[4] <= 0)
	{
		diffX = choose(random_range(-50, 50));
		diffY = choose(random_range(-50, 50));
		alarm[4] = random_range(30, 60)
	}
	
	if instance_exists(o_playerShip)
	{
		EnemyBasicChasingIA();
	}

	if instance_exists(shield)
	{
		shield.x = x+lengthdir_x(10, direction)
		shield.y = y+lengthdir_y(10, direction)
		shield.image_angle = _angle;
	}
	else
	{
		existsShield = false;	
	}
}