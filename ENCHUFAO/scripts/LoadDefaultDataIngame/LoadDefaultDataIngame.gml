// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function LoadDefaultDataIngame()
{
	//--------SHIPS------//
	global.shipGreenUnlocked = 1;
	global.shipBlueUnlocked  = 0;
	global.shipRedUnlocked  = 0;
	global.shipDarkUnlocked  = 0;
	global.shipPurpleUnlocked  = 0;
	global.shipMP3Unlocked  = 0;
	
	global.ach500Enemies = 0;
	global.achNoBump = 0;
	global.enemiesKilledTotalAch = 0;
	
	global.bestLevelRun = 0;
	global.HighScore = 0;
	global.totalDeaths = 0;
	global.totalBullets = 0;
	global.totalBombs = 0;
	global.totalPlugs = 0;
	global.totalPETAS = 0;
	global.totalBumps = 0;
	
	global.slowmilisecs = 0;
	global.connectedmilisecs = 0;
	
	
	global.godModeIsOn = false;
	global.infiniteEnergyIsOn = false;
	global.infiniteAmmoIsOn = false;
	global.infiniteHPIsOn = false;
	global.infiniteLaserIsOn = false;
	
	
	for (var i = 0; i <global.numberOfShips; i++)
	{
		ship = ds_map_find_value(global.shipList, i)
		if (ship.sprite != splayer)
		{
			ship.unlocked = 0;
		}
	}
}