/// @description Insert description here
// You can write your code in this editor

if instance_exists(o_playerShip) && (room != Sala_Inicio)
{
	if (o_playerShip.plugged)
	{
		if (global.energy <= global.energyTotal)
		{
			global.energy+=0.75;
		}
		
		if (global.chargingHp = true)
		{
			if (global.hp <= global.hpMax)
			{
				global.hp +=0.005;
			}
		}
		
		if (global.chargingShield = true)
		{
			if (global.shields <= global.shieldsMax)
			{
				global.shields +=0.005;
			}
		}
		
		if (global.chargingAmmo = true)
		{
			if (global.ammo <= global.ammoMax)
			{
				global.ammo +=0.1;
			}
		}
			
	}
	else if (o_playerShip.plugged == false)
	{
		if (global.energy>0)
		{
			if (abs(o_playerShip._hpush >= 0.1)) || (abs(o_playerShip._vpush >= 0.1))
			{
				global.energy-=0.1 * (abs(o_playerShip._hpush)+abs(o_playerShip._vpush));
			}
			else
			{
				global.energy-=0.1
			}
		}
	}
}

if keyboard_check_pressed(ord("R"))
{
	game_restart()
}



