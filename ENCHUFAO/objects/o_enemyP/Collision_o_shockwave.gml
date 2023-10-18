/// @description Insert description here
// You can write your code in this editor

if (!shocked)
{
	path_end();
	shocked = true;
	
	alarm[9] = 30;
	
	dirShoked = point_direction(other.x, other.y, x,y);
	
	if point_distance(other.x, other.y, x,y) < 50
	{
		speed = random_range(2,3);
	}
	else
	{
		speed = random_range(1,2);
	}
	
	direction = dirShoked;
	
	state = ENEMYSTATE.SHOCKED;
	takeCover = false;
}



