// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Enemy_Shocked()
{
	if (leavesTrail)
	{
		part_particles_create(global.naveEnemy_Waiting_sys, x-lengthdir_x(8,direction), y-lengthdir_y(8,direction), global.naveEnemy_Waiting , 1)
	}

	speed = lerp(speed, 0, 0.02);

	_angle = dirShoked;
	
	MoveZeroGrv_Speed();
	x+=hspeed * global.relativeSpeed;
	y+=vspeed * global.relativeSpeed;
	
	if (alarm[9] <= 0)
	{
		shocked = false;
	}
	
	if (!shocked) 
	{
		speed = 0;
		state = ENEMYSTATE.CHASING;
		direction = dirShoked
		_angle = dirShoked;
	}
	
	if (slowed)
	{
		slowedCont--;
	
		if (slowedCont <= 0)
		{
			slowed = false;
			_hpush = 0;
			_vpush = 0;
			state = ENEMYSTATE.CHASING;	
		}
	}
}