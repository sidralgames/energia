/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

IsEnchufeMP3CHILL = true;

xConnectionPos= x+lengthdir_x(105,image_angle-180);
yConnectionPos = y+lengthdir_y(105,image_angle-180);


if (enchufeActive)
{
	sprite_index = s_mp3ChillRoom_2
}
else
{
	sprite_index = s_mp3ChillRoom
}

if (abs(_hpush) > 0.02 || abs(_vpush) >0.02)
{
	_angle += max(0.05*sign(_hpush), 0.13*(abs(_hpush)),0.05*sign(_vpush), 0.13*(abs(_vpush))*global.relativeSpeed);
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








