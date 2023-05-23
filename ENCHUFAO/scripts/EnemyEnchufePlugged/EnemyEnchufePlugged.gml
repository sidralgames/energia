// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function EnemyEnchufePlugged()
{
	part_particles_create(global.overCharged_sys, x+random_range(-18,18), y+random_range(-18,18), global.overChargedPart , 1)	
	x = enchufe.x;
	y = enchufe.y;
	
	if _hp <= 0
	{
		state = ENEMYSTATE.FREE
	}
	
	if (_hp <= 10)
	{	
		enchufe.enchufeOvercharged = true;
		enchufe.contOvercharged = 250;
		alarm[0] = 120;
		sprite_index = s_enemyEnchufe;
		image_speed = 0.6
		_hpush = choose(1,-1);
		_vpush = choose(1,-1);
		enchufe._vpush = -_vpush/3;
		enchufe._hpush = -_hpush/3;
		cable = instance_create_layer(x,y,"Cable", o_cableEnemy)
		state = ENEMYSTATE.FREE;	
	}
	
}