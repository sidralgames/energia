// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function EnemyEnchufePlugged()
{
	CheckInScreen(50, 30);

	if (inScreen)
	{
		part_particles_create(global.overCharged_sys, x+random_range(-18,18), y+random_range(-18,18), global.overChargedPart , 1)	
	}
	
	x = enchufe.x;
	y = enchufe.y;
	
	enchufe.occupied = true;
	
	if (_hp <= 10)
	{	
		enchufe.enchufeOvercharged = true;
		enchufe.contOvercharged = 250;
		enchufe.occupied = false;
		
		alarm[0] = 120;
		
		sprite_index = s_enemyEnchufe;
		cable = instance_create_layer(x,y,"Cable", o_cableEnemy)
		_hpush = choose(random_range(0.75,1.5),-random_range(0.75,1.5));
		_vpush = choose(random_range(0.75,1.5),-random_range(0.75,1.5));
		
		image_speed = 0.6

		enchufe._vpush = -_vpush/3;
		enchufe._hpush = -_hpush/3;
	
		state = ENEMYSTATE.FREE;
		canPlug = 200;
	}
	
}