/// @description Insert description here
// You can write your code in this editor

if (abierto)
{
	image_index = 1;
}
else
{
	image_index = 0;	
}

if (room = Sala_0)
{
	if (global.pluggedInEnergy) && (global.pluggedInHp) &&
	(global.pluggedInAmmo) && (global.pluggedInShield)
	{
		abierto = true;	
	}
}


if instance_exists(o_playerShip)
{
	if o_playerShip.plugged = true && (o_playerShip.pluggedFinal = true)
	{
		if (cont = false)
		{
			if (o_playerShip.bumpsAchievement = true) && (global.achNoBump = 0) && (room  = Sala_0)
			{
				global.achNoBump = 1;
			}
			cont = true
			alarm[0] = 120;
		}
	}
}

