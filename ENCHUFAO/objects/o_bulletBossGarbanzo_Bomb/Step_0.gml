/// @description Insert description here
// You can write your code in this editor
_hpush = lerp(_hpush, 0, 0.05);
_vpush = lerp(_vpush, 0, 0.05);
scale = lerp(scale,1,0.05)

_angle += max(0.5*sign(_hpush), 2*(abs(_hpush)),0.5*sign(_vpush), 2*(abs(_vpush))*global.relativeSpeed);



MoveZeroGrv_Bomb();
if (flashAlpha >0)
{
	flashAlpha-=0.09;	
}


if (alarm[0] <=0) && (abs(_hpush) <= 0.4 && abs(_vpush) <= 0.4) && exploding = false
{
	contExplo = 70;
	exploding = true;
	image_index = 1;
}

if (_hp = 0)
{
	exploding = true;
}
if (exploding = true)
{
	contExplo --;
	
	if (contExplo <=0)
	{
		instance_destroy();	
	}
	
}