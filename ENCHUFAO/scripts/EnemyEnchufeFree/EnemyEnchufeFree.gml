// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function EnemyEnchufeFree()
{
if (image_index >=11)
{
	image_speed = 0;
}
part_particles_create(global.naveEnemy1_sys, x, y, global.naveEnemy1 , 3)

if instance_exists(o_playerShip)
{
	
MoveZeroGrv()	
		

if (point_distance(x,y,o_playerShip.x, o_playerShip.y) <= 300)
{
	dire = direction;
	if (alarm[0] <= 0)
	{
		instance_create_layer(x , y, "Bullets", o_misil);
		alarm[0] = random_range(120,200)
	}
}

if (_hp <= 0)
{
	if (state = ENEMYSTATE.FREE)
	{
		instance_destroy(cable)
	}
	screenShake(1,10)
	if instance_exists(cross)
	{
		instance_destroy(cross)
	}
	global.XPpoints +=30;
	explo = instance_create(x,y,o_explo2)
	explo.image_xscale = 0.5;
	explo.image_yscale = 0.5;
	instance_destroy();
}

image_angle += _hpush*5;
}
}