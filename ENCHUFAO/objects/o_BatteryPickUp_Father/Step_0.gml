/// @description Insert description here
// You can write your code in this editor
if (inEnemy = false)
{
	speed = lerp(speed, 0, 0.01);
	_angle += hspeed;
	
	MoveZeroGrv_Speed();
	
	t = (t + increment) mod 360;
	shift = amplitude * dsin(t);


	//apply the shift


	if instance_exists(o_playerShip)
	{
		y = yy + lengthdir_y(shift, direction + dir1);	
	
		overBattery = collision_circle(x,y,30,o_playerShip,false,true);

		if (overBattery)
		{
			if (o_playerShip.key_x) && (o_playerShip.haveBatteryUpgrade == false)
			{
				audio_play_sound_on(global.audioEmitter,snd_pickBattery,false, 50);
				instance_destroy();
				instance_create_layer(o_playerShip.x, o_playerShip.y -30, "Player", o_bannerBullet)
			}
		}
	}
}
else
{
	yy = y;	
}

if !instance_exists(cable)
{
	inEnemy = false;	
}