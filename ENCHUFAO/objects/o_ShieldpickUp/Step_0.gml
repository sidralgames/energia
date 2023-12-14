/// @description Insert description here
// You can write your code in this editor


t = (t + increment) mod 360;
shift = amplitude * dsin(t);


//apply the shift

if instance_exists(o_playerShip)
{
	if (point_distance(x,y, o_playerShip.x, o_playerShip.y) < 30)
	{
		direction = point_direction(x,y, o_playerShip.x, o_playerShip.y)
		speed = 5;
		picked = true;
	}
	else
	{
		x = xx + lengthdir_x(shift, direction +dir1);
		y = yy + lengthdir_y(shift, direction + dir1);	
	}
}

if (picked = true)
{
	audio_play_sound_on(global.audioEmitter, snd_shieldUp, false, 50,,,1.5);
	
	contPicked --;
	if (contPicked <= 0)
	{
		if (global.shields < global.shieldsMax)
		{
			if (global.spriteShip = splayer_Blue)
			{
				if (global.bonusIsUpgraded)
				{
					global.shields +=3;
				}
				else
				{
					global.shields +=2;
				}
			}
			else
			{
				global.shields +=1;
			}
			
			
			
			instance_destroy();
		}
	}
}