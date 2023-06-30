/// @description Insert description here
// You can write your code in this editor
_hpush = lerp(_hpush, 0, 0.05);
_vpush = lerp(_vpush, 0, 0.05);

_angle += max(0.5*sign(_hpush), 5*(abs(_hpush)),0.5*sign(_vpush), 5*(abs(_vpush)));

MoveZeroGrv();


if (alarm[0] <=0) && (abs(_hpush) <= 0.05 && abs(_vpush) <= 0.05)
{
	instance_destroy();	
}