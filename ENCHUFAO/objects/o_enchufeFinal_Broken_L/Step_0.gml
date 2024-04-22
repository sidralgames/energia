/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

xConnectionPos= x + lengthdir_x(17, _angle+0);
yConnectionPos = y + lengthdir_y(17, _angle+0);

xColPos= x + lengthdir_x(20, _angle+0);
yColPos = y + lengthdir_y(20, _angle+0);

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


fakeDir = point_direction(xConnectionPos, yConnectionPos, o_playerShip.x, o_playerShip.y)
if (enchufeActive)
{
	if (o_playerShip.alarm[5] > 10)
	{
		_angle += sign(dsin(fakeDir - _angle)) * precision;
	}
}
else
{
	_angle += sign(_hpush) * _hpush/3 * global.relativeSpeed;
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










