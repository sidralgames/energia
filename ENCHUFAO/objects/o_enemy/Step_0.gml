/// @description Insert description here
// You can write your code in this editor
part_particles_create(global.naveEnemy1_sys, x, y, global.naveEnemy1 , 3)

if instance_exists(o_playerShip)
{
	myPath = path_add();
	
	mp_grid_path(gridRoom1, myPath, x, y, o_playerShip.x ,o_playerShip.y, true);
	
	_speed = random_range(0.5,1.5)
		
	if alarm[2] <=0
	{
		path_start(myPath,_speed ,path_action_stop, false)
	}
	else
	{
		path_end()
		Move()	
	}	


	if (_hp <= 0)
	{
		instance_destroy();
	}
	
	var a = point_direction(xprevious, yprevious, o_playerShip.x, o_playerShip.y);
	direction += sign(dsin(a - direction)) * precision;
	image_angle = direction;


}


