/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

switch(inside)
{
	case "Battery":
	{
		if instance_exists(batteryCreated)
		{
			if (batteryCreated.inCapsule)
			{
				batteryCreated.image_angle = _angle;
				batteryCreated.x = x;
				batteryCreated.y = y;
			}
		}
		
		if (charge >= maxCharge)
		{
			if (capsuleHaveBattery)
			{
				batteryCreated.vspeed = _vpush;
				batteryCreated.hspeed = _hpush;
				batteryCreated.depth = depth-1;
				batteryCreated.inCapsule = false;
				batteryCreated._angle = _angle;
				capsuleHaveBattery = false;
				capsuleHaveSomething = false;
				with (o_playerShip)
				{
					Unplug();
				}
				if (batteryCreated._angle = _angle)
				{
					instance_destroy();
				}
			}
		}
		
		if (_hp <= 0) && (capsuleHaveSomething)
		{
			instance_destroy(batteryCreated);
			if (o_playerShip.plugged) && (charging)
			{
				with (o_playerShip)
				{
					Unplug();
				}
			}
			instance_destroy();
			instance_create(x,y,o_explo2);
		}
		
	}break;
	
	case "Sidekick":
	{
		if instance_exists(strandedFake)
		{
			strandedFake.image_angle = _angle;
			strandedFake.x = x;
			strandedFake.y = y;
		}
		
		if (charge >= maxCharge)
		{
			if (capsuleHaveStranded)
			{
				instance_destroy(strandedFake);
				newStranded = instance_create(x,y, o_strandedShip);
				newStranded.sprite = choose(splayer, splayer_Blue, splayer_Dark, splayer_Red, splayer_Purple, splayer_mp3)
				newStranded.strandedShipCableStat = 2;
				newStranded.chargedInEnergy = true;
				newStranded.chargedInHp = true;
				newStranded.chargedInAmmo = true;
				newStranded.shipReady = true;
				newStranded.createdStranded = false;
				//x = x+lengthdir_x(10,_angle-90);
				//y = y+lengthdir_y(10,_angle-90);
				capsuleHaveStranded = false;
				capsuleHaveSomething = false;
				
				with (o_playerShip)
				{
					Unplug();
				}
				instance_destroy();
			}
		}
		
		if (_hp <= 0) && (capsuleHaveSomething)
		{
			instance_destroy(strandedFake);
			if (o_playerShip.plugged) && (charging)
			{
				with (o_playerShip)
				{
					Unplug();
				}
			}
			instance_destroy();
			instance_create(x,y,o_explo2);
		}
	
	}break;	
	
	case "Enemy":
	{
		if instance_exists(enemyFake)
		{
			enemyFake.image_angle = _angle;
			enemyFake.x = x;
			enemyFake.y = y;
		}
		
		if (charge >= maxCharge)
		{
			if (capsuleHaveEnemy)
			{
				instance_destroy(enemyFake);
				enemy = choose(o_enemy, o_enemyFast, o_enemyMitosis, o_enemy_Waiting_Shield)
				newEnemy = instance_create_layer(x,y, "Enemies", enemy);

				capsuleHaveEnemy = false;
				capsuleHaveSomething = false;
				
				with (o_playerShip)
				{
					Unplug();
				}

				instance_destroy();
			}
		}
		
		if (_hp <= 0) && (capsuleHaveSomething)
		{
			instance_destroy(enemyFake);
			if (o_playerShip.plugged) && (charging)
			{
				with (o_playerShip)
				{
					Unplug();
				}
			}
			instance_destroy();
			instance_create(x,y,o_explo2);
		}
		
	}break;
	
}


if (place_meeting(x+_hpush*1.5,y,o_enchufe_Father))
{
    _hpush = -_hpush*bnc;

}
if (place_meeting(x,y+_vpush*1.5,o_enchufe_Father))
{
    _vpush = -_vpush*bnc;
	
}

Move();

_angle += _hpush*2*global.relativeSpeed;


if (enchufeOvercharged)
{
	part_particles_create(global.overCharged_sys, x+random_range(-30,30), y+random_range(-30,30), global.overChargedPart , 3)	
	
	contOvercharged -= 0.75;
	if (contOvercharged <= 0)
	{
		enchufeOvercharged = false;
	}
}

_hpush = clamp(_hpush, -1.5, 1.5)
_vpush = clamp(_vpush, -1.5, 1.5)


if (canBeEnchufatedCont > 0)
{
	canBeEnchufatedCont --;
}
if (canBeEnchufatedCont <=0)
{
	canBeEnchufated = true;
}

if (_hp > (_hpMax/2 + _hpMax/3))
{
	image_index = 0;
}
else if (_hp > (_hpMax/3)) && (_hp <=(_hpMax/2 + _hpMax/3))
{
	image_index = 1;
}
else
{
	image_index = 2;
}

