/// @description Insert description here
// You can write your code in this editor



if instance_exists(o_playerShip)
{

//if alarm[1] <=5
//{
	
//		len += _speed*0.1;
//		tentacles.rope1.vertexChangeData(third,
//		tentacles.instTope.x+lengthdir_x(len,dire),
//		tentacles.instTope.y+lengthdir_y(len,dire))

	
		
	
//}
//if alarm[1] <= 0
//{
//	len = 0;
//	off = off*-1;
//	alarm[1] = 10;
	
//}
	myPath = path_add();
	
	mp_grid_path(gridRoom1, myPath, x, y, o_playerShip.x ,o_playerShip.y, true);
	


		_speed = random_range(0.5,2)
		
		if alarm[2] <=0
		{
			path_start(myPath,_speed ,path_action_stop, false)
		
		}
		else
		{
			path_end()
			Move()	
		}
	

	
}
if (_hp <= 0)
{
	instance_destroy();
}



var a = point_direction(xprevious, yprevious, o_playerShip.x, o_playerShip.y);
direction += sign(dsin(a - direction)) * precision;
image_angle =  lerp(point_direction(x,y,o_playerShip.x, o_playerShip.y), direction,0.005);

