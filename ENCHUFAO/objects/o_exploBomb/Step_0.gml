/// @description Insert description here
// You can write your code in this editor

if instance_exists(o_playerShip)
{
	inScreen = point_distance(x,y,o_playerShip.x, o_playerShip.y) < global.offRangeDistance_Explo;
}

image_speed = min(1, 1*(global.relativeSpeed+0.2));

image_xscale = scale;
image_yscale = scale;

if (sounded = false)
{
	sounded = true;
	if (inScreen)
	{
		switch(isFrom)
		{
			case "PlayerBomb":
			{
				if (global.bombIsHomingBomb)
				{
					//audio_stop_sound(snd_explo_1);
					audio_stop_sound(snd_shoot_6);
					//audio_play_sound_on(global.audioEmitter, snd_explo_1, false, 5,,,random_range(0.8,1))
					audio_play_sound_on(global.audioEmitter, snd_shoot_6, false, 5,,,random_range(0.8,1))
				}
				else
				{
					audio_stop_sound(snd_explo_2);
					audio_play_sound_on(global.audioEmitter, snd_explo_2, false, 5,,,random_range(0.8,1))
				}
			}break;
		
			case "BulletBomb":
			{
				audio_stop_sound(snd_shoot_6);
				audio_play_sound_on(global.audioEmitter, snd_shoot_6, false, 5,,,random_range(0.8,1))
			}break;
		
			case "EnemyBomb":
			{
				audio_stop_sound(snd_explo_1);
				audio_play_sound_on(global.audioEmitter, snd_explo_1, false, 5,,,random_range(0.8,1))
			}break;
		
			case "BossBomb":
			{
				audio_stop_sound(snd_explo_old);
				audio_play_sound_on(global.audioEmitter, snd_explo_1, false, 5,,,random_range(0.8,1))
			}break;
		}
	}
}

