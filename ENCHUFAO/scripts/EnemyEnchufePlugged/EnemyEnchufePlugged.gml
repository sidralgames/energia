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

if (version2)
{
	if (alarm[4] <= 0)
	{
		bullets = irandom_range(4,8)
		for( i = 0; i < bullets; i++ )
		{
		    inst = instance_create( x, y, o_bullet_enemyPlugged);
			if instance_exists(inst)
			{
			    inst.direction = i * (360 / bullets ) + offset;
			    inst.speed=1.5;
				inst.direBullet = direBullet;
			}
		}
	
		offset=offset+12.25;
		direBullet = direBullet*-1;
		alarm[4] = 120
	}
}

	
	if (_hp <= 10)
	{	
		enchufe.enchufeOvercharged = true;
		enchufe.contOvercharged = 250;
		alarm[0] = 120;
		if (version2)
		{
			sprite_index = s_enemyEnchufe_v2;
			cable = instance_create_layer(x,y,"Cable", o_cableEnemy_v2)
			_hpush = choose(random_range(1,1.5),-random_range(1,1.5));
			_vpush = choose(random_range(1,1.5),-random_range(1,1.5));
		}
		else
		{
			sprite_index = s_enemyEnchufe;
			cable = instance_create_layer(x,y,"Cable", o_cableEnemy)
			_hpush = choose(random_range(0.75,1.5),-random_range(0.75,1.5));
			_vpush = choose(random_range(0.75,1.5),-random_range(0.75,1.5));
		}
		image_speed = 0.6

		enchufe._vpush = -_vpush/3;
		enchufe._hpush = -_hpush/3;
	
		state = ENEMYSTATE.FREE;
		canPlug = 200;
	}
	
}