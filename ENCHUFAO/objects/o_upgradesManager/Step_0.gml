/// @description Insert description here
// You can write your code in this editor
if (alarm[0] <= 0)
{
	alarm[0] = 5
}

if instance_exists(o_playerShip) && instance_exists(o_enchufeUpgrades)
{
	if collision_circle(o_playerShip.x, o_playerShip.y, 30,  o_enchufeUpgrades, false, true)
	{
		drawText = true;
		if (namecheck = false)
		{
			for (var i = 0; i < global.numberOfUpgrades; i++)
			{
				upgrades = ds_map_find_value(global.upgradesList,i);
				enchufeReal = upgrades.obj;
				if collision_circle(o_playerShip.x, o_playerShip.y, 30,  enchufeReal, false, true)
				{
					textToDraw = upgrades.infoUpgrade;
					namecheck = true;
				}
			}
		}
	}
	else
	{
		drawText = false;
		namecheck = false;
	}
}
