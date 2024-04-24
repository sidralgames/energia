/// @description Insert description here
// You can write your code in this editor
inScreen = false;
image_speed = 0;
haveHPnow = false;
_hpMax = 20;
_hp = _hpMax;

// Inherit the parent event
event_inherited();
abierto = false;
final = true;
cont = false;
if (room != Sala_Upgade) &&  (room != Sala_MegaUpgrade)
{
	_hpush = choose(random_range(0.03, 0.08), -random_range(0.03, 0.08));
	_vpush = choose(random_range(0.03, 0.08), -random_range(0.03, 0.08));
}
else
{
	_hpush = 0;
	_vpush = 0;
}

bnc = 1;
_angle = 0;

if (room = Sala_Tutorial)
{
	global.level = -1;
}

alarm[2] = 30;