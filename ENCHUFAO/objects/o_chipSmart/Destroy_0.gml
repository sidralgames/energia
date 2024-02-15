/// @description Insert description here
// You can write your code in this editor
global.bulletsAreSmartIsOn = false;
global.chipSmartFactor-=0.25;

if (o_playerShip.plugged)
{
	with (o_playerShip)
	{
		CheckUpgradesOfEnchufe(global.enchufeEnergyUpgradesList, global.enchufeEnergyUpgradesNum);
		CheckUpgradesOfEnchufe(global.enchufeAmmoUpgradesList, global.enchufeEnergyUpgradesNum);
		CheckUpgradesOfEnchufe(global.enchufeLaserUpgradesList, global.enchufeEnergyUpgradesNum);
		CheckUpgradesOfEnchufe(global.enchufeHPUpgradesList, global.enchufeEnergyUpgradesNum);
	}
}


global.chipsLaserTot -=1;

event_inherited()

global.bulletsAreSmartIsOn = false;

