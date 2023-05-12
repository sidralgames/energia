// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function MoveShip()
{
	dirH = key_right - key_left;
	dirV = key_down - key_up;
	
	if (dirH == 0) && (dirV == 0)
	{
		_hpush = lerp(_hpush, 0, 0.05);
		_vpush = lerp(_vpush, 0, 0.05);
	}
	if (alarm[3] <= 0)
	{
		_hpush += dirH * walkAcceleration;
		_hpush = clamp(_hpush, -walkSpeed, walkSpeed);
	
		_vpush += dirV * walkAcceleration;
		_vpush = clamp(_vpush, -walkSpeed, walkSpeed);
	}
}