/// @description Insert description here
// You can write your code in this editor
Controls_Input();

colorBT_fx = layer_get_fx("EffectColorBulletTime");
colorBT_fx_params = fx_get_parameters(colorBT_fx);

if (global.slowMoTime <= 1) && (canSlowMotion)
{
	canSlowMotion = false;
	alarm[7] = 120;
	
}

if global.slowMoTime <105 && !key_BulletTime
{
	canSlowMotion = false;
}
if (alarm[7] <= 0) && (!key_BulletTime) && (global.slowMoTime > 105)
{
	canSlowMotion = true;
}

if (key_BulletTime) && (canSlowMotion = true)
{
	
	SetTimeSlow();
	
	o_main.alarm[1] = 90;
	
	if (global.slowMoTime >=0)
	{
		global.slowMoTime -=1.1;
	}

	global.relativeSpeed = lerp(global.relativeSpeed,0.3, 0.05);
	pitch = min(1,global.relativeSpeed+0.5);
	//audio_sound_pitch(snd_song, pitch)
	audio_emitter_pitch(global.audioEmitter, pitch);
	layer_set_visible("EffectColorBulletTime", true);
	fx_colorBT = lerp(fx_colorBT,0.6,0.01); 
	colorBT_fx_params.g_Intensity = fx_colorBT;	
	fx_set_parameters(colorBT_fx, colorBT_fx_params);
	
}
else 
{
	//if (global.slowMoTime <= global.slowMoTimeMax)
	//{
	//	global.slowMoTime +=0.4;
	//}
	
	fx_colorBT = lerp(fx_colorBT,0,0.03); 
	colorBT_fx_params.g_Intensity = fx_colorBT;
	fx_set_parameters(colorBT_fx, colorBT_fx_params);

	if (fx_colorBT <=0.1)
	{
		layer_set_visible("EffectColorBulletTime", false);
	}
		
	if (global.relativeSpeed > 0.8)
	{
		pitch = 1;
		audio_emitter_pitch(global.audioEmitter, pitch);
		//audio_sound_pitch(snd_song,pitch)
		global.relativeSpeed = 1.0;	
	}
	else
	{
		global.relativeSpeed = lerp(global.relativeSpeed,1.0, 0.05);
		pitch = lerp(pitch,1.0, 0.05);
	}
}

part_particles_create(global.naveP_sys, x, y, global.naveP , 5)
PlayerState_Free();
MovePlayer();

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

if (global.energy <=80 && soundEnergy = false)
{
	sounded = false
	soundEnergy = true
	audio_play_sound_on(global.audioEmitter, snd_battery, true, 90)
}

if (global.energy > 80) || (plugged == true)
{
	sounded = false
	soundEnergy = false
	audio_stop_sound(snd_battery)
}

if (global.energy <= 0 && sounded = false)
{
	audio_stop_sound(snd_battery)
	sounded = true;
	audio_play_sound_on(global.audioEmitter, snd_noBattery, false, 50)
}


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

if (key_bomb)
{
	if (alarm[6] <= 0) && (global.bombAmmo > 0 )
	{
		PlayerShipBomb();
	}
}


//---------P.E.T.A--------//

if (key_l3Down) && (key_r3Down)
{
	if (alarm[6] <= 0) && (global.PETAAmmo > 0 )
	{
		PlayerShipPETA();
	}
}

inEnchufe = collision_circle(x,y,20,o_enchufe_Father,false,true)

if (inEnchufe) 
{	
	if (pluggedToStrandedShip)
	{
		if (inEnchufe.abierto = true) && (inEnchufe.contOvercharged <=0) && (inEnchufe.dying == false)
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
			&& (inEnchufe.dying == false) && (!pluggedToStrandedShip)
			{
				if (key_x)
				{
					if (plugged = false) && (o_charger.overcharged = false) && (inEnchufe.dying == false)
					{
						if (inEnchufe.withStrandedShip == false)
						{
							Plug();
		
							CheckEnchufe();
			
							if (room = Sala_Upgade)
							{
								CheckEnchufeUpgrade()
							}
						}
						else
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

connectedToShip = collision_circle(x,y,20,o_chargerStrandedShip,false,true);

if (connectedToShip)
{
	if (key_x)
	{
		if (pluggedToStrandedShip = false) && (o_charger.overcharged = false) && alarm[4] <=0
		{
			PlugToShip();
		}
	}
}


////------DEACTIVATE NO VISIBLE WALLS & MORE------////
//var _vx = camera_get_view_x(view_camera[0]);
//var _vy = camera_get_view_y(view_camera[0]);
//var _vw = camera_get_view_width(view_camera[0]);
//var _vh = camera_get_view_height(view_camera[0]);
//instance_activate_region(_vx - 64, _vy - 64, _vw + 128, _vh + 128, true);
	
//DeactivateScript()

//instance_activate_region(_vx - 164, _vy - 164, _vw + 228, _vh + 228, true);
	

//------------EFFECTS----------------//

if (room = Sala_0) || (room = Sala_FirstBoss)
{
	distort_fx = layer_get_fx("EffectBreach");
	distort_fx_params = fx_get_parameters(distort_fx);
	
	color_fx = layer_get_fx("EffectColor");
	color_fx_params = fx_get_parameters(color_fx);
	

	//---------BREACH----------//
	
	//------TURN RED----------//
	if instance_exists(o_breach) || instance_exists(o_breachBoss)
	{
		layer_set_visible("EffectColor", true);
		fx_color = lerp(fx_color,0.2,0.01); 
		color_fx_params.g_Intensity = fx_color;	
		fx_set_parameters(color_fx, color_fx_params);
	}
	else
	{
		fx_color = lerp(fx_color,0,0.03); 
		color_fx_params.g_Intensity = fx_color;
		fx_set_parameters(color_fx, color_fx_params);

		if (fx_color <=0.1)
		{
			layer_set_visible("EffectColor", false);
		}
	}
	
	if instance_exists(o_breach)  || instance_exists(o_breachBoss) //&& (!inBlackHoleArea)
	{

		layer_set_visible("EffectBreach", true);
		
		fx = lerp(fx,2,0.005); 
		
		distort_fx_params.g_ChromaSpreadAmount = fx*1.5
		distort_fx_params.g_Distort1Amount = fx-0.5;
		distort_fx_params.g_Distort2Amount = fx-0.5;

		fx_set_parameters(distort_fx, distort_fx_params);
		
	}
	
	
	if instance_exists(o_blackHole)
	{
		nearestHole = instance_nearest(x,y,o_blackHole);
		
		inBlackHoleArea =  point_distance(x,y,nearestHole.x, nearestHole.y) < 300
	}
	
	if instance_exists(o_blackHole) 
	{
		if (inBlackHoleArea)
		{
						
			distanceToBlackHole = point_distance(x,y,o_blackHole.x, o_blackHole.y)
			fxDistance = (300 - distanceToBlackHole)/1.3;
			fx_blackHole = lerp(fx_blackHole,fxDistance,0.05);
	
			
			layer_set_visible("EffectBreach", true);
			
			fx_blackHole = fxDistance*0.01;
			
			distort_fx_params.g_ChromaSpreadAmount = fx_blackHole*1.75
			distort_fx_params.g_Distort1Amount = fx_blackHole;
			distort_fx_params.g_Distort2Amount = fx_blackHole;	
			
			fx_set_parameters(distort_fx, distort_fx_params);
			
		}
		else
		{
			inBlackHoleArea = false;
		}
	}
	
	if (inBlackHoleArea)
	{
		dir = point_direction(x,y,nearestHole.x, nearestHole.y)
		if !tile_meeting(x+lengthdir_x(5,dir) ,y+lengthdir_y(5,dir),"Tiles")
		{
			if point_distance(x,y,nearestHole.x, nearestHole.y) < 300 &&
			point_distance(x,y,nearestHole.x, nearestHole.y) > 5
			 {
				_hpush += lengthdir_x(0.08,dir)
				_vpush += lengthdir_y(0.08,dir)
			 }
		}
	}
	
	if (!inBlackHoleArea) && !instance_exists(o_breach)
	{
		//layer_set_visible("LOCO_1", false);
		fx = lerp(fx,0,0.03);

		distort_fx_params.g_ChromaSpreadAmount = fx*1.5
		distort_fx_params.g_Distort1Amount = fx;
		distort_fx_params.g_Distort2Amount = fx;
		
		fx_set_parameters(distort_fx, distort_fx_params);

			if (fx <=0.1)
		{
			layer_set_visible("EffectBreach", false);
		}

	}
	
}


if (global.laser <=0)
{
	cooldownLaser = 20;
}

if (global.laser > 0)
{
	if (global.laser >0)
	{
		cooldownLaser--;
	}
	
	if (key_laser) && (cooldownLaser <=0)
	{
		laserAborted = false;
		gamepad_set_vibration(0,0.05*laserCont,0.05*laserCont)
		laserCont+=1.5;
		if (laserCont >= 60) && (laserActive = false) 
		{
			impulse = false;
			if (cooldownLaser<=0)
			{
				screenShake(15,20)
			}
			laserCont = 60;
			laserActive = true;
			drawflash=true;
		}
	}
	else
	{
		if (laserAborted = false)
		{
			laserAborted = true;
			alarm[4] = 10;
		}
		contExploTile = 0;
		laserCont = 0;
		laserActive = false;
		flashLaser = false;
		blueWidht = 20;
		whiteWidht = 30;
		whiteW = 10;
		blueW = 30;
		impulse = false;
	}

	if (laserActive) && (key_laser) && (global.laser>0)
	{
		if (impulse = false)
		{
			_hpush += -lengthdir_x(10, _angle);
			_vpush += -lengthdir_y(10, _angle);
			impulse = true;
		}
		gamepad_set_vibration(0,2,2)
		PlayerShipLaser(_angle);
		//PlayerShipLaser(_angle+offsetLaser);
		//PlayerShipLaser(_angle-offsetLaser);
	}
}
else
{
	if (laserActive)
	{
	laserActive = false
	alarm[4] = 10
	}
}



if (room != Sala_Inicio)
{
	//if instance_exists(lightPlayer)
	//{
	//	lightPlayer.light [| eLight.X] = x
	//	lightPlayer.light [| eLight.Y] = y
	//}
}


//---------DIE---------//
if (global.hp < 1)
{
	//if instance_exists(lightPlayer)
	//{
	//	instance_destroy(lightPlayer)
	//}
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