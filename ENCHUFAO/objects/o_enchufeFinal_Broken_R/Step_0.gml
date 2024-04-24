/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

if (firstCont > 0 )
{
	firstCont --;
}

xConnectionPos= x + lengthdir_x(17, _angle+180);
yConnectionPos = y + lengthdir_y(17, _angle+180);

xColPos= x + lengthdir_x(20, _angle+180);
yColPos = y + lengthdir_y(20, _angle+180);

col.x = xColPos
col.y = yColPos
col._angle = _angle;


if (place_meeting(x+_hpush*1.5,y,o_enchufe_Father))
{
    _hpush = -_hpush*bnc;

}
if (place_meeting(x,y+_vpush*1.5,o_enchufe_Father))
{
    _vpush = -_vpush*bnc;
	
}

Move();



if instance_exists(o_playerShip)
{		
	
	if (enchufeActive)
	{
		if (o_playerShip.alarm[5] > 0) && (changingAngle = false)
		{
			fakeDir = point_direction(xConnectionPos, yConnectionPos, o_playerShip.x, o_playerShip.y)
			changingAngle = true;
			changingCont = 20
		}
		
		if (changingCont > 0)
		{
			changingCont --;
			if (precision > 0)
			{
				precision-=0.05;
			}
			_angle -= (sign(dsin(fakeDir - _angle)) * precision);
		}
		
		if (changingCont <= 0) || (o_playerShip.alarm[5] > 0)
		{
			changingAngle = false;
			precision = precisionInitial;
		}
	}
	else
	{
		changingCont = 0;
		if (abs(_hpush) > 0.15)
		{
			_angle -= sign(_hpush) * _hpush/3 * global.relativeSpeed;
		}
		else
		{
			_angle -= sign(_vpush) * _vpush/3 * global.relativeSpeed;
		}
	}
}


_hpush = clamp(_hpush, -1.25, 1.25)
_vpush = clamp(_vpush, -1.25, 1.25)

if (canBeEnchufatedCont > 0)
{
	canBeEnchufatedCont --;
}
if (canBeEnchufatedCont <=0)
{
	canBeEnchufated = true;
}









