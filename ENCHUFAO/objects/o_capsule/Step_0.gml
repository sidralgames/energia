/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
inScreen =  (x > __view_get( e__VW.XView, 0 )-50 && x < __view_get( e__VW.XView, 0 )+710) &&
(y > __view_get( e__VW.YView, 0 )-50 && y < __view_get( e__VW.YView, 0 )+410)

if (scale < 1)
{
	scale+=0.1
}


switch(inside)
{
	case "Battery":
	{
		if instance_exists(batteryCreated)
		{
			if (batteryCreated.inCapsule)
			{
				batteryCreated.image_angle = image_angle;
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
				batteryCreated._angle = image_angle;
				capsuleHaveBattery = false;
				capsuleHaveSomething = false;
				with (o_playerShip)
				{
					Unplug();
				}
				if (batteryCreated._angle = image_angle)
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
			instance_create(x,y,o_exploPurple);
		}
		
	}break;
	
	case "Sidekick":
	{
		if instance_exists(strandedFake)
		{
			strandedFake.image_angle = image_angle;
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
				newStranded.firstSetted = true;
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
			instance_create(x,y,o_exploPurple);
		}
	
	}break;	
	
	case "Enemy":
	{
		if instance_exists(enemyFake)
		{
			enemyFake.image_angle = image_angle;
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
			instance_create(x,y,o_exploPurple);
		}
		
	}break;
	
	case "Bomb":
	{
		if instance_exists(bombFake)
		{
			bombFake.image_angle = image_angle;
			bombFake.x = x;
			bombFake.y = y;
		}
		
		if (charge >= maxCharge)
		{
			if (capsuleHaveBomb)
			{
				instance_destroy(bombFake);
				bomb = choose(o_BombpickUp, o_bombMine, o_bombEnemy);
				newBomb = instance_create_layer(x,y, "Enemies", bomb);
				
				if (bomb=o_bombMine)
				{
					newBomb.bulletSpeed = 0;
				}

				capsuleHaveBomb = false;
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
			instance_destroy(bombFake);
			if (o_playerShip.plugged) && (charging)
			{
				with (o_playerShip)
				{
					Unplug();
				}
			}
			instance_destroy();
			instance_create(x,y,o_exploPurple);
		}
		
	}break;
	
	case "Radar":
	{
		if instance_exists(radarFake)
		{
			radarFake.image_angle = image_angle;
			radarFake.x = x;
			radarFake.y = y;
		}
		
		if (charge >= maxCharge)
		{
			if (capsuleHaveRadar)
			{
				instance_destroy(radarFake);
				
				newRadar= instance_create_layer(x,y, "Enemies", o_radarPickup);

				capsuleHaveRadar = false;
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
			instance_destroy(radarFake);
			if (o_playerShip.plugged) && (charging)
			{
				with (o_playerShip)
				{
					Unplug();
				}
			}
			instance_destroy();
			instance_create(x,y,o_exploPurple);
		}
		
	}break;
	
	case "SlowMo":
	{
		if instance_exists(slowFake)
		{
			slowFake.image_angle = image_angle;
			slowFake.x = x;
			slowFake.y = y;
		}
		
		if (charge >= maxCharge)
		{
			if (capsuleHaveSlowMo)
			{
				instance_destroy(slowFake);
				
				drop = choose(0,0,1);
				
				if (drop = 0)
				{
					slowMoPickUps = random_range(50,70)
					for (var i = 0; i < slowMoPickUps; i++)
					{
						slowmoPart = instance_create_layer(x,y,"Enchufes", o_slowMoPickUp)
						slowmoPart._hpush = random_range(-1.5,1.5);
						slowmoPart._vpush = random_range(-1.5,1.5);
					}
				}
				else
				{
					enemies = random_range(3,5)
					for (var i = 0; i < enemies; i++)
					{
						enemy = instance_create_layer(x,y,"Enemies", o_enemyMini)
						enemy.state=ENEMYSTATE.CHASING;
						enemy.vspeed = random_range(-1.5,1.5);
						enemy.hspeed = random_range(-1.5,1.5);
					}
				}

				capsuleHaveSlowMo = false;
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
			instance_destroy(slowFake);
			if (o_playerShip.plugged) && (charging)
			{
				with (o_playerShip)
				{
					Unplug();
				}
			}
			instance_destroy();
			instance_create(x,y,o_exploPurple);
		}
		
	}break;
	
}

if (alarm[2] <=0)
{
	if (place_meeting(x+_hpush*1.5,y,o_enchufe_Father))
	{
	    _hpush = -_hpush*bnc;
	}
	if (place_meeting(x,y+_vpush*1.5,o_enchufe_Father))
	{
	    _vpush = -_vpush*bnc;
	}
}

Move();

image_angle += max(0.1*sign(_hpush), 2*(abs(_hpush)),0.1*sign(_vpush), 2*(abs(_vpush))*global.relativeSpeed);
_angle = image_angle;

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

