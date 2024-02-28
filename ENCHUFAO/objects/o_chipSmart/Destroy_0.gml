/// @description Insert description here
// You can write your code in this editor
global.bulletsAreSmartIsOn = false;
global.chipSmartFactor-=0.25;

if instance_exists(o_playerShip)
{
	if (o_playerShip.plugged)
	{
		with (o_playerShip)
		{
			if (enchufe.isMainEnchufe)
			{
				if (enchufe.hp)
				{
					CheckForUpgradeEnchufe(global.enchufeHPUpgradesList, global.enchufeHPUpgradesNum)
				}
				else if (enchufe.ammo)
				{
					CheckForUpgradeEnchufe(global.enchufeAmmoUpgradesList, global.enchufeAmmoUpgradesNum)
				}
				else if (enchufe.laser)
				{
					CheckForUpgradeEnchufe(global.enchufeLaserUpgradesList, global.enchufeLaserUpgradesNum)
				}
				else if (enchufe.energy)
				{
					CheckForUpgradeEnchufe(global.enchufeEnergyUpgradesList, global.enchufeEnergyUpgradesNum)
				}
			}
		}
	}
}


global.chipsLaserTot -=1;

event_inherited()

global.bulletsAreSmartIsOn = false;

