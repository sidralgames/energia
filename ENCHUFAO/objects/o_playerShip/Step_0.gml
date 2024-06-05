/// @description Insert description here
// You can write your code in this editor
Controls_Input();



if (shielded = false) && ( (room != Sala_Upgade) && (room != Sala_MegaUpgrade) )
{
	shielded = true;
	global.shields += global.shieldsPerRoom;
}


if (flashAlpha > 0)
{
	flashAlpha--;
}

CheckSmokeToHide();

CheckExternalBattery();

CheckCalledForHelp();

CheckExploHitIsUpgraded();

ParticlesManager();

PlayerCreateSmoke();

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
	fireRate = max(5,global.fireRate - global.temporaryFireRate_Factor);
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


CheckShields();

//----------- LOW BATTERY --------//
LowBatterySounds();

//-----------------NORMAL SHOOT-----------------//
if (key_shoot)
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
PlayerPetaAndPito();


//--------- PLUG -----------//
inEnchufe = collision_circle(x,y,maxConectRad+10,o_enchufe_Father,true,true);

if (inEnchufe) 
{	
	inEnchufeConnectionPoint = (point_distance(x,y,inEnchufe.xConnectionPos,inEnchufe.yConnectionPos) < maxConectRad+50)

	
	if (pluggedToStrandedShip)
	{
		if (inEnchufe.abierto == true) && (inEnchufe.contOvercharged <=0)
		&& (inEnchufe.dying == false) && (inEnchufe.occupied = false)
		&& (inEnchufe.isPluggable == true) && (inEnchufeConnectionPoint == true)
		{
			if (key_x)
			{
				if (inEnchufe.isPETA_F == false) && (inEnchufe.isMainEnchufe)
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
			if (inEnchufe.abierto == true) && (inEnchufe.contOvercharged <=0)
			&& (inEnchufe.dying == false) && (!pluggedToStrandedShip)
			&& (inEnchufe.occupied = false) && (inEnchufe.isPluggable == true)
			&& (inEnchufeConnectionPoint == true)
			{
				if (key_x)
				{
					if (plugged = false) && (o_charger.overcharged = false) && (inEnchufe.dying == false)
					{
						if (inEnchufe.withStrandedShip == false) && (inEnchufe.canBeEnchufated == true)
						{
							Plug();
		
							CheckEnchufe();
							
							if (inEnchufe.isEnchufeUpgrade)
							{
								if (room == Sala_Upgade) || (room == Sala_0)
								{
									CheckEnchufeUpgrade()
								}
							
								if (room == Sala_MegaUpgrade)
								{
									CheckEnchufeMegaUpgrade()
								}
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
		if (chargerStrandedShip.canBeEnchufated) && (chargerStrandedShip.trapped = false) && (pluggedToStrandedShip = false)
		&& (o_charger.overcharged = false) && (alarm[4] <=0)
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

if (o_main.ending = false) && (o_main.endingLevel = false)
{
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
}


//------------EFFECTS FILTERS----------------//
CheckFilters();

//-------- LASER ----------//
LaserLogicPlayer();

//---------DIE---------//

global.lastTouched = global.numEnemyKilledBy;

if (global.hp < 1)
{
	contExploDead --;
	
	if (contExploDead <=0)
	{
		for (var i= 0; i< random_range(1,2); i++)
		{
			explo = instance_create(x+ random_range(-12,12), y + random_range(-12,12),o_explo1)
			explo.scale = random_range(0.05,0.15);
			explo.image_xscale = explo.scale;
			explo.image_yscale = explo.scale;
		}
		
		contExploDead = random_range(2,10);
	}
	
	contDead --;
	global.relativeSpeed = lerp(global.relativeSpeed, 0.1, 0.1);
	if (shakeFinal = false)
	{
		screenShake(0,0,0);
		screenShake(10,60,5)
		shakeFinal = true;
	}


	if (contDead >= 30)
	{
		vibrationExplo = random_range(0.2, 0.3)
		gamepad_set_vibration(0, vibrationExplo, vibrationExplo);
	}

	if (contDead < 30)
	{
		vibrationExplo=lerp(vibrationExplo, 0, 0.1)
		gamepad_set_vibration(0, vibrationExplo, vibrationExplo);
	}
}

if (contDead <= 0)
{
	gamepad_set_vibration(0,0,0)
	
	gamepad_set_vibration(0, 0.8, 0.8);
	screenShake(0,0,0);
	screenShake(10,130,10)
	instance_create(x,y,o_explo1)
	audio_play_sound_on(global.audioEmitter, snd_death, false, 50)
	audio_stop_sound(global.song);
	audio_stop_sound(snd_battery);
	audio_stop_sound(snd_laserPlayerCharge);
	audio_stop_sound(snd_laserPlayerShooting);
	audio_stop_sound(pitoSound);
	instance_destroy();	
	instance_destroy(o_cable);
	instance_destroy(o_charger);
	global.totalDeaths+=1;
	gameOver = instance_create_layer(x, y, "Text", o_gameOver);
	gameOver.killedby = global.numEnemyKilledBy;
}