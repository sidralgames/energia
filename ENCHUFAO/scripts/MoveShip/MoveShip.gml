// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function MoveShip()
{
	dirH = key_right - key_left;
	dirV = key_down - key_up;
	
	if (dirH == 0)
	{
		_hpush = lerp(_hpush, 0, 0.05);
		
	}
	if (dirV == 0)
	{
		_vpush = lerp(_vpush, 0, 0.05);
	}
	if (alarm[3] <= 0)
	{
		_hpush += dirH * global.walkAcceleration;
		_vpush += dirV * global.walkAcceleration;
		_hpush = clamp(_hpush, -walkSpeed, walkSpeed);
		_vpush = clamp(_vpush, -walkSpeed, walkSpeed);
	}
}

