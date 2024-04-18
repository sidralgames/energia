/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

xConnectionPos= x + lengthdir_x(17, _angle+0);
yConnectionPos = y + lengthdir_y(17, _angle+0);

col.x = xConnectionPos
col.y = yConnectionPos
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

_angle += max(0.05*sign(_hpush), 2*(abs(_hpush)),0.05*sign(_vpush), 2*(abs(_vpush))*global.relativeSpeed);


_hpush = clamp(_hpush, -1.5, 1.5)
_vpush = clamp(_vpush, -1.5, 1.5)


if (canBeEnchufatedCont > 0)
{
	canBeEnchufatedCont --;
}
if (canBeEnchufatedCont <=0)
{
	canBeEnchufated = true;
}










