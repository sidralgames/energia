/// @description Insert description here
// You can write your code in this editor
Controls_Input();

CheckExternalBattery();

CheckCalledForHelp();

if (flashAlpha > 0)
{
	flashAlpha--;
}

if (tocado) && (creatingSmoke = false)
{
	if (global.exploHitIsUpgraded = true)
	{
		shock = instance_create(x,y,o_shockwaveTiles)
		ebomb = instance_create(x,y,o_exploBomb);
		ebomb.scale = 1.4;
		ebomb.scale = 1.4;
	}
	creatingSmoke = true;
	contSmoke = 440 / global.hp
	side = choose(1,-1)
}



if (contSmoke<=0)
{
	creatingSmoke = false
}

if (global.hp<=1)
{
	contSmoke = 0;
	contBurnPart--;
	
	if (contBurnPart <= 0)
	{
		contBurnPart = random_range(5,7) ;
		part_particles_create(global.partSmoke_sys, x+lengthdir_x(random_range(((sprite_height-4)/2),((sprite_height-6)/2))*side, _angle+90),y+lengthdir_y(random_range(((sprite_height-4)/2),((sprite_height-6)/2))*side, _angle+90), global.partSmoke, 1);
	}
	
}
else
{
	if (contSmoke > 0) 
	{
		contSmoke--;
		contBurnPart--;
	
		if (contBurnPart <= 0)
		{
			contBurnPart = random_range(global.hp+2,global.hp+3) ;
			part_particles_create(global.partSmoke_sys, x+lengthdir_x(((sprite_height-5)/2)*side, _angle+90),y+lengthdir_y(((sprite_height-5)/2)*side, _angle+90), global.partSmoke, 1);
		}
	
	}
}

//if (global.changingTiles)
//{
//	if (tile_meeting(x,y,"Tiles"))
//	{
//		instance_create(x,y,o_exploBomb);
//		gamepad_set_vibration(0,0.3,0.3);
//		alarm[4] = 10;
//		audio_play_sound_on(global.audioEmitter, snd_hit, false, 50)
//		alarm[1] = 30
//		tocado = true;
//		global.hp -= 1 * global.damageReceived;
//		screenShake(4,30);		
//		global.hitsTaken+=1;
//	}
//}
if (partChanged = true) && (!plugged)
{
	partChanged = false;
	global.amplifyPowerLaser = 0;
	global.amplifyPowerAmmo = 0;
	instance_destroy(o_partBalaP);
	instance_create_layer(-100,-100, "Part",o_partBalaP);	
}

if (global.infiniteHPIsOn)
{
	global.hp = global.hpMax;
}
//------ SLOW MOTION ------//
PlayerShipSlowMo();

PlayerState_Free();

MovePlayer();

//------- INVISIBLE CLOAK ----//
PlayerInvisibleCloak();


if (plugged)
{
	SetTimeConnected();	
}

if (o_charger.overcharged)
{
	fireRate = 30;
}
else
{
	fireRate = max(5,global.fireRate);
}


if (alarm[5] <= 0)
{
	if instance_exists(o_crosshair) 
	{
		if (o_crosshair.alphaP > 0)
		{
			_angle = point_direction(x,y,o_crosshair.x, o_crosshair.y)
		}
		else
		{	
			if (dirH != 0) || (dirV != 0)
			{
			_angle = point_direction(o_crosshair.x, o_crosshair.y,x,y)
			}
		}
	}
}


if (global.shields >= 1)
{
	if (shieldCreated = false)
	{
		shieldCreated = true;
		instance_create_layer(x,y,"Shield",o_shield);
	}
	
	if instance_exists(o_shield)
	{
		o_shield.x = x;
		o_shield.y = y;
	}
	
}

//----------- LOW BATTERY --------//
LowBatterySounds();

//-----------------NORMAL SHOOT-----------------//
if (key_shoot) && (!superShot) 
{
	if (alarm[0] <= 0) && (global.ammo >1 )
	{
		
		PlayerShipShoot();
		
		if (!plugged) && (!o_charger.overcharged) && (global.chargerShoots)
		{
			ChargerShoot()
		}
	}
}

//-----------------BOMB-----------------//
if (global.bombAmmo > 0 )
{
	if (key_bomb)
	{
		if (alarm[6] <= 0)
		{
			PlayerShipBomb();
		}
	
	}
	else
	{
		alarm[6] = 0;
	}
}

//---------P.E.T.A--------//
if (key_l3Dowm) && (key_r3Dowm) && (global.PETAAmmo > 0 )
{
	if (alarm[11] <= 0) 
	{
		PlayerShipPETA();
	}
}

//--------- PLUG -----------//
inEnchufe = collision_circle(x,y,maxConectRad,o_enchufe_Father,false,true)
if (inEnchufe) 
{	
	if (pluggedShip)
	{
		if (inEnchufe.abierto = true) && (inEnchufe.contOvercharged <=0)
		&& (inEnchufe.dying == false) && (inEnchufe.occupied = false)
		{
			if (key_x)
			{
				if (inEnchufe.isPETA_F == false)
				{
					inEnchufe.withStrandedShip = true;
					PlugStrandedShipToEnchufe();
				}
				else
				{
					SimpleStrandedUnplug();
					Plug();
					CheckEnchufe();
				}
			}
		}
	}
	else
	{
		if (alarm[8] <= 0)
		{
			if (inEnchufe.abierto = true) && (inEnchufe.contOvercharged <=0)
			&& (inEnchufe.dying == false) && (!pluggedShip) && (inEnchufe.occupied = false)
			{
				if (key_x)
				{
					if (plugged = false) && (o_charger.overcharged = false) && (inEnchufe.dying == false)
					{
						if (inEnchufe.withStrandedShip == false) && (inEnchufe.canBeEnchufated == true)
						{
							Plug();
		
							CheckEnchufe();
			
							if (room = Sala_Upgade)
							{
								CheckEnchufeUpgrade()
							}
						}
						else if (inEnchufe.withStrandedShip == true)
						{
							if (inEnchufe.isMimic == false)
							{
								PlugToShip();
								inEnchufe.withStrandedShip = false;
							}
						}
					}
				}
			}
		}
	}
}

connectedToShip = collision_circle(x,y,20,o_chargerStrandedShip,false,true);

if (connectedToShip)
{
	if (key_x)
	{
		chargerStrandedShip = connectedToShip;
		if (chargerStrandedShip.trapped = false) && (pluggedShip = false) && (o_charger.overcharged = false) && alarm[4] <=0
		{
			PlugToShip();
		}
	}
}

if (!connectedToShip) && (!inEnchufe)
{
	radi = minConectRad;
}
if (contDeactivate>=0)
{
	contDeactivate--;
}

if (contDeactivate<=0)
{
	////------DEACTIVATE NO VISIBLE VINES------////
	DeactivateScript();
	var _vx = camera_get_view_x(view_camera[0]);
	var _vy = camera_get_view_y(view_camera[0]);
	var _vw = camera_get_view_width(view_camera[0]);
	var _vh = camera_get_view_height(view_camera[0]);
	instance_activate_region(_vx - 64, _vy - 64, _vw + 128, _vh + 128, true);
}

//instance_activate_region(_vx - 164, _vy - 164, _vw + 228, _vh + 228, true);
	

//------------EFFECTS FILTERS----------------//
CheckFilters();

//-------- LASER ----------//
LaserLogicPlayer();

//---------DIE---------//
if (global.hp < 1)
{

	global.relativeSpeed = 1;
	screenShake(3,60)
	instance_create(x,y,o_explo1)
	audio_play_sound_on(global.audioEmitter, snd_death, false, 50)
	audio_stop_sound(global.song)
	audio_stop_sound(snd_battery)
	instance_destroy();	
	instance_destroy(o_enemy)
	instance_destroy(o_cable)
	instance_destroy(o_charger)
	global.totalDeaths+=1;
	instance_create(x, y, o_gameOver)
}