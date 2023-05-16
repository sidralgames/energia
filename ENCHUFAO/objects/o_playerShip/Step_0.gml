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

if (global.hp < 1)
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
	audio_play_sound(snd_battery, 90, true)
}

if (global.energy > 80) || (plugged == true)
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




////------DEACTIVATE NO VISIBLE WALLS & MORE------////
//var _vx = camera_get_view_x(view_camera[0]);
//var _vy = camera_get_view_y(view_camera[0]);
//var _vw = camera_get_view_width(view_camera[0]);
//var _vh = camera_get_view_height(view_camera[0]);
//instance_activate_region(_vx - 64, _vy - 64, _vw + 128, _vh + 128, true);
	
//DeactivateScript()

//instance_activate_region(_vx - 164, _vy - 164, _vw + 228, _vh + 228, true);
	


