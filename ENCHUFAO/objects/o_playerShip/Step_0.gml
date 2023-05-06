/// @description Insert description here
// You can write your code in this editor
Controls_Input();

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
	soundEnergy = true
	audio_play_sound(snd_battery, 90, true)
}

if (global.energy > 80)
{
	soundEnergy = false
	audio_stop_sound(snd_battery)
}



	


