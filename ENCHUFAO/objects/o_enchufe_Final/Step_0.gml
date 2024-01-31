/// @description Insert description here
// You can write your code in this editor

if (place_meeting(x+_hpush*1.2,y,o_enchufeStandard_Father))
{
    _hpush = -_hpush*bnc;

}
if (place_meeting(x,y+_vpush*1.2,o_enchufeStandard_Father))
{
    _vpush = -_vpush*bnc;
	
}

Move();

image_angle += max(0.05*sign(_hpush), 2*(abs(_hpush)),0.05*sign(_vpush), 2*(abs(_vpush))*global.relativeSpeed);
_angle = image_angle;

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
	(global.pluggedInAmmo) && (global.pluggedInLaser)
	{
		abierto = true;	
	}
}

if (room = Sala_Tutorial)
{
	if (global.pluggedInEnergy) && (global.pluggedInHp) &&
	(global.pluggedInAmmo) && (global.pluggedInLaser)
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
			
			//RESET UPGRADES
			if (room = Sala_Upgade)
			{
				for (var i = 0; i < global.numberOfUpgrades-1; i++)
				{
					upgrades = ds_map_find_value(global.upgradesList,i);
					if (upgrades.canShowUp == true)
					{
						upgrades.isPicked = false;
					}
				}
			}
			
			
			if (room = Sala_MegaUpgade)
			{
				for (var i = 0; i < global.numberOfMegaUpgrades-1; i++)
				{
					upgrades = ds_map_find_value(global.megaUpgradesList,i);
					if (upgrades.canShowUp == true)
					{
						upgrades.isPicked = false;
					}
				}
			}
			
			
			cont = true
			alarm[0] = 60;
		}
	}
}

