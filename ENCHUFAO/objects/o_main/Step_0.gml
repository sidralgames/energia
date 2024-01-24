/// @description Insert description here
// You can write your code in this editor
Controls_Input();

if (global.totalEnemiesOnLevel < 0)
{
	global.totalEnemiesOnLevel = 0;
}
///-------------ACHIEVEMENTS-----////

if (global.enemiesKilledTotalAch >= 500) && (global.ach500Enemies = 0)
{
	global.ach500Enemies = 1;
}



if (global.bulletsGhostIsOn = true)
{
	global.alhpaGhost = 0.8;
}
else
{
	global.alhpaGhost = 1;
}
if instance_exists(o_playerShip) //&& (room != Sala_Inicio)
{
	if (global.energy >= global.energyMax)
	{
		global.energy = global.energyMax;
	}
	
	if (o_playerShip.plugged)
	{
		PlayerPluggedMainEnchufes()
			
	}
	else if (o_playerShip.plugged == false)
	{
		full = false;
		
		if (!global.infiniteEnergyIsOn)
		{
			if (global.energy>0)
			{
				if (abs(o_playerShip._hpush) >= 0.1) || (abs(o_playerShip._vpush) >= 0.1)
				{
					global.energy-=(0.3 * global.cloackReal ) / global.DischargeTime
				}
				else
				{
					global.energy-= (0.1 * global.cloackReal ) / global.DischargeTime
				}
			}
		}
	}
}


if (key_select)
{
	SaveGame();
	game_restart()
}


part_type_sprite(global.balaP,global.bulletPart_sprite,true,1,false)