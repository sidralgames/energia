/// @description Insert description here
// You can write your code in this editor

sprite = choose(splayer, splayer_Blue, splayer_Dark, splayer_Red, splayer_Purple)

while (sprite = global.spriteShip)
{
	sprite = choose(splayer, splayer_Blue, splayer_Dark, splayer_Red, splayer_Purple)
}


if (sprite = splayer)
{
	global.strandedShipCableStat = 4;
	weight = 3;
	
}
else if (sprite = splayer_Blue)
{
	global.strandedShipCableStat = 2;
	weight = 1.5;
}
else if (sprite = splayer_Dark)
{
	global.strandedShipCableStat = 3;	
	weight = 2.5;
}
else if (sprite = splayer_Red)
{
	global.strandedShipCableStat = 5;
	weight = 5;
}
else if (sprite = splayer_Purple)
{
	global.strandedShipCableStat = 3;
	weight = 3.5;
}

sprite_index = sprite;

instance_create_layer(x,y,"Cable", o_cableStrandedShip);

_hpush = choose(random_range(-1.5,-1),random_range(1.5,1));
_vpush = choose(random_range(-1.5,-1),random_range(-1.5,-1));
bnc = 1;
_angle = image_angle;

