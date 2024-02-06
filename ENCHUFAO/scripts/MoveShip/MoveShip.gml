// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function MoveShip()
{
	dirH = key_right - key_left;
	dirV = key_down - key_up;
	
	if (abs(dirH) >= 0.3)
	{
		if (alarm[3] <= 0)
		{
			_hpush += dirH * global.walkAcceleration;
			_hpush = lerp(_hpush, 0, 0.00005);
		}
	}

	if (abs(dirV) >= 0.3)
	{
		if (alarm[3] <= 0)
		{
			_vpush += dirV * global.walkAcceleration;
			_vpush = lerp(_vpush, 0, 0.00005);
			
		}
	}
	
	if (dirV = 0)
	{
		_vpush = lerp(_vpush, 0, 0.05);
	}
	
	if (dirH = 0)
	{
		_hpush = lerp(_hpush, 0, 0.05);	
	}

	if (abs(_hpush) + abs(_vpush) < global._speed*1.9)
	{
		_hpush = clamp(_hpush, -walkSpeed, walkSpeed);
		_vpush = clamp(_vpush, -walkSpeed, walkSpeed);
	}
	else
	{
		_hpush = clamp(_hpush, -diagSpeed*1.1, diagSpeed*1.1);
		_vpush = clamp(_vpush, -diagSpeed*1.1, diagSpeed*1.1);
	}
}


