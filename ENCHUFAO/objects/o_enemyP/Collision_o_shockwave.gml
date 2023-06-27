/// @description Insert description here
// You can write your code in this editor

if (!shocked)
{
	shocked = true;
	
	alarm[9] = 30;
	
	dirShoked = point_direction(x,y,other.x, other.y);
	
	_hpush += lengthdir_x(-3, dirShoked);
	_vpush += lengthdir_y(-3,dirShoked);
	
	state = ENEMYSTATE.SHOCKED;
	takeCover = false;
}



