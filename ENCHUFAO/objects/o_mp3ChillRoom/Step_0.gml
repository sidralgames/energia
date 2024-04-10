/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

IsEnchufeMP3CHILL = true;

xConnectionPos= x+lengthdir_x(105,image_angle-180);
yConnectionPos = y+lengthdir_y(105,image_angle-180);

xConnectionDisp= x+lengthdir_x(145,image_angle-6);
yConnectionDisp = y+lengthdir_y(145,image_angle-6);

if instance_exists(laser)
{
	laser.x= xConnectionDisp;
	laser.y = yConnectionDisp;
}
if (enchufeActive)
{
	if !audio_is_playing(sndLemo)
	{
		audio_play_sound_on(delay_emitter, sndLemo, true, 90,5.9,,1.1);
	}
	else
	{
		audio_resume_sound(sndLemo)
	}
	
	sprite_index = s_mp3Gun3;

	if (image_index >25)
	{
		if (counting = false)
		{
			counting = true;
			contToShoot = 50;
		}
	
		if (contToShoot > 0)
		{
			contToShoot--;
		}
	}
	
	if (image_index<27)
	{
		image_speed = 0.5;
	}
	else
	{
		image_speed = 0;
	}
}
else
{
	audio_pause_sound(sndLemo)
	counting = false;
	contToShoot = 60;
	sprite_index = s_mp3Gun3;
	image_speed = 0;
	image_index = 0;
}

if (!tile_meeting(x+_hpush*5.25,y,"Tiles")) && (!tile_meeting(x,y +_vpush*5.25,"Tiles"))
{
	if (abs(_hpush) > 0.05 || abs(_vpush) >0.05)
	{
		_angle += max(0.05*sign(_hpush), 0.13*(abs(_hpush)),0.05*sign(_vpush), 0.13*(abs(_vpush))*global.relativeSpeed);
	}
}


image_angle = _angle;

Move();

if (charge >= 200)
{
	sprite_index = sprite_enchufePluged;
	image_speed = 0.2;
	
}

//if (enchufeActive = true)
//{
//	if (changed = false)
//	{
//		sprite_index = s_mp3ChillRoom_2;
//		changed = true;
//		x= x-lengthdir_x(105,image_angle);
//		y = y-lengthdir_y(105,image_angle);
//	}
	
//	xConnectionPos= x;
//	yConnectionPos = y;
//}
//else if (enchufeActive = false)
//{
//	if (changed = true)
//	{
//		sprite_index = s_mp3ChillRoom;
//		changed = false
//		x= x+lengthdir_x(105,image_angle);
//		y = y+lengthdir_y(105,image_angle);
//	}
	
//	xConnectionPos= x+lengthdir_x(105,image_angle-180);
//	yConnectionPos = y+lengthdir_y(105,image_angle-180);
//}


_hpush = clamp(_hpush, -0.3, 0.3)
_vpush = clamp(_vpush, -0.3, 0.3)

if (canBeEnchufatedCont > 0)
{
	canBeEnchufatedCont --;
}
if (canBeEnchufatedCont <=0)
{
	canBeEnchufated = true;
}








