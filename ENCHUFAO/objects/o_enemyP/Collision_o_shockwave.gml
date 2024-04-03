/// @description Insert description here
// You can write your code in this editor

if (!shocked)
{
	state = ENEMYSTATE.SHOCKED;
	path_end();
	slowed = false;
	
	alarm[9] = 120;
	
	dirShoked = point_direction(other.x, other.y, x,y);
	
	if point_distance(other.x, other.y, x,y) < 50
	{
		speed = random_range(3,3);
	}
	else
	{
		speed = random_range(2,3);
	}
	
	direction = dirShoked;
	
	
	takeCover = false;
}



