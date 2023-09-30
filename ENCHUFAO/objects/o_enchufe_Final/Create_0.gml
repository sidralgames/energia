/// @description Insert description here
// You can write your code in this editor

image_speed = 0;

// Inherit the parent event
event_inherited();
abierto = false;
final = true;
cont = false;
if (room != Sala_Upgade)
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