/// @description Insert description here
// You can write your code in this editor

if (flashAlpha > 0) 
{
	flashAlpha -= 0.09;
}


MoveZeroGrv_Disc();

contParts --;
if (contParts <=0)
{
	part_particles_create(global.naveEnemy_Waiting_sys, x-lengthdir_x(random_range(3,5),direction), y-lengthdir_y(random_range(3,5),direction), global.naveEnemy_Waiting , 1)
	contParts = contPartsInitial;
}

speed = discSpeed * min(1, global.relativeSpeed+0.1)
_angle -= discSpeed*5*global.relativeSpeed;

if (_hp <= 0) || (bounces >= bouncesMax)
{
	instance_destroy()
}