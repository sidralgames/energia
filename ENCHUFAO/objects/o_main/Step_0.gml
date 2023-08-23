/// @description Insert description here
// You can write your code in this editor


///-------------ACHIEVEMENTS-----////

if (global.enemiesKilledTotalAch >= 500) && (global.ach500Enemies = 0)
{
	global.ach500Enemies = 1;
}


if instance_exists(o_playerShip) && (room != Sala_Inicio)
{

	if (o_playerShip.plugged)
	{
		if (global.energy <= global.energyTotal)
		{
			global.energy+=0.75*global.chargeTime;
		}
		
		if (global.chargingHp = true)
		{
			if (global.hp <= global.hpMax)
			{
				global.hp +=0.007*global.chargeTime;
			}
		}
		
		if (global.chargingShield = true)
		{
			if (global.shields <= global.shieldsMax)
			{
				global.shields +=0.005*global.chargeTime;
			}
		}
		
		if (global.chargingAmmo = true)
		{
			if (global.ammo <= global.ammoMax)
			{
				global.ammo +=0.4*global.chargeTime;
			}
		}
			
	}
	else if (o_playerShip.plugged == false)
	{
		if (global.energy>0)
		{
			if (abs(o_playerShip._hpush >= 0.1)) || (abs(o_playerShip._vpush >= 0.1))
			{
				global.energy-=( 0.1 * (abs(o_playerShip._hpush)+abs(o_playerShip._vpush))) / global.DischargeTime;
			}
			else
			{
				global.energy-= (0.1) / global.DischargeTime
			}
		}
	}
}

if keyboard_check_pressed(ord("R"))
{
	SaveGame();
	game_restart()
}



if (global.chargingHp)
{
	global.cableColor = green
}
else if (global.chargingAmmo)
{
	global.cableColor = yellow
}
else if (global.chargingShield)
{
	global.cableColor = blue
}
else
{
	global.cableColor = white
}

part_type_sprite(global.balaP,global.bulletPart_sprite,true,1,false)