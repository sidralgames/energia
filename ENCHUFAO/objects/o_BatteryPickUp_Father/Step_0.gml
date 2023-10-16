/// @description Insert description here
// You can write your code in this editor

t = (t + increment) mod 360;
shift = amplitude * dsin(t);


//apply the shift


if instance_exists(o_playerShip)
{
	y = yy + lengthdir_y(shift, direction + dir1);	
	
	overBattery = collision_circle(x,y,20,o_playerShip,false,true);

	if (overBattery)
	{
		if (o_playerShip.key_x) && (o_playerShip.haveBatteryUpgrade == false)
		{
			audio_play_sound_on(global.audioEmitter,choose(snd_plugged, snd_plugged_2, snd_plugged_3),false, 50);
			instance_destroy();	
		}
	}
}
