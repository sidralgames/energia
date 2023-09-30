// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Enemy_Shocked()
{
	part_particles_create(global.naveEnemy_Waiting_sys, x-lengthdir_x(8,direction), y-lengthdir_y(8,direction), global.naveEnemy_Waiting , 1)
	
	_hpush = lerp(_hpush, 0, 0.02);
	_vpush = lerp(_vpush, 0, 0.02);
	
	_angle = dirShoked;
	
	MoveZeroGrv();
	
	if (alarm[9] <= 0)
	{
		shocked = false;
	}
	
	if (!shocked) 
	{
		state = ENEMYSTATE.CHASING;	
	}
}