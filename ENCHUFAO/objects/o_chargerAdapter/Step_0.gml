if tile_meeting(x,y,"Tiles") && (!free)
{
	image_index = 1;	
}
else
{
	free = true;
	image_index = 0;
}

if (free)
{
if (place_meeting(x+_hpush*1.5,y,o_enchufe_Father))
{
    _hpush = -_hpush*bnc;

}
if (place_meeting(x,y+_vpush*1.5,o_enchufe_Father))
{
    _vpush = -_vpush*bnc;
	
}

Move();

_angle += max(0.05*sign(_hpush), 2*(abs(_hpush)),0.05*sign(_vpush), 2*(abs(_vpush))*global.relativeSpeed);


if instance_exists(o_playerShip)
{
	
	overAdapter = collision_circle(x,y,radCol,o_playerShip,false,true);
	
	if (overAdapter)
		{
			if (o_playerShip.key_x)
			{
				audio_play_sound_on(global.audioEmitter,snd_plugged,false, 50);
				instance_destroy();
				global.haveChargerAdapter = true;
			}
		}
	}
}