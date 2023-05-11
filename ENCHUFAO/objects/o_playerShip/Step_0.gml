/// @description Insert description here
// You can write your code in this editor
Controls_Input();

part_particles_create(global.naveP_sys, x, y, global.naveP , 5)
PlayerState_Free();
Move();

if instance_exists(o_crosshair) 
{
	if (o_crosshair.alphaP > 0)
	{
		image_angle = point_direction(x,y,o_crosshair.x, o_crosshair.y)
	}
	else
	{
		image_angle = point_direction(o_crosshair.x, o_crosshair.y,x,y)
	}
}

if (global.hp <= 0)
{
	screenShake(3,60)
	instance_create(x,y,o_explo1)
	audio_play_sound(snd_death, 50, false)
	audio_stop_sound(snd_song)
	audio_stop_sound(snd_battery)
	instance_destroy();	
	instance_destroy(o_enemy)
	instance_destroy(o_cable)
	instance_destroy(o_charger)
	instance_create(x, y, o_gameOver)
}
if (global.shields >= 1)
{
	if (shieldCreated = false)
	{
		shieldCreated = true;
		instance_create(x,y,o_shield);
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
	audio_play_sound(snd_battery, 90, true)
}

if (global.energy > 80)
{
	sounded = false
	soundEnergy = false
	audio_stop_sound(snd_battery)
}
if (global.energy = 0 && sounded = false)
{
	sounded = true;
	audio_play_sound(snd_noBattery, 50, false)
}

	//-----------------NORMAL SHOOT-----------------//
	if (key_shoot) && (!superShot)
	{
		if (alarm[0] <= 0) && (global.ammo >1 )
		{
			PlayerShipShoot()
			ChargerShoot()
		}
	}



	


