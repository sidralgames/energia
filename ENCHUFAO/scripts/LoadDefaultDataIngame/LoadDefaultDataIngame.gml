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
	
	//----------- BESTIARY ------------//
	global.enemiesInBestiary = 0;
	

	//------------ KILLS -----------//
	
	//-- BASIC --//
	global.bestiaryEnemyBasicUnlocked = 0;
	global.enemyBasicKilledBy = 0;
	global.enemyBasicKills = 0;
	
	//-- BASIC MEGA --//
	global.bestiaryEnemyBasicMegaUnlocked = 0;
	global.enemyBasicMegaKilledBy = 0;
	global.enemyBasicMegaKills = 0;
	
	//-- FAST --//
	global.bestiaryEnemyFastUnlocked = 0;
	global.enemyFastKilledBy = 0;
	global.enemyFastKills = 0;
	
	//-- DISP --//
	global.bestiaryEnemyDispUnlocked = 0;
	global.enemyDispKilledBy = 0;
	global.enemyDispKills = 0;
	
	//-- SNIPER --//
	global.bestiaryEnemySniperUnlocked = 0;
	global.enemySniperKilledBy = 0;
	global.enemySniperKills = 0;
	
	//-- SNIPER MEGA --//	
	global.bestiaryEnemySniperMegaUnlocked = 0;
	global.enemySniperMegaKilledBy = 0;
	global.enemySniperMegaKills = 0;
	
	//-- SHIELD --//
	global.bestiaryEnemyShieldUnlocked = 0;
	global.enemyShieldKilledBy = 0;
	global.enemyShieldKills =  0;
	
	//-- MINI --//
	global.bestiaryEnemyMiniUnlocked = 0;
	global.enemyMiniKilledBy = 0;
	global.enemyMiniKills = 0;
	
	//-- MOTHERSHIP --//
	global.bestiaryEnemyMothershipUnlocked = 0;
	global.enemyMothershipKilledBy = 0;
	global.enemyMothershipKills = 0;


	//------- GOD MODE -------//
	global.godModeIsOn = false;
	global.infiniteEnergyIsOn = false;
	global.infiniteAmmoIsOn = false;
	global.infiniteHPIsOn = false;
	global.infiniteLaserIsOn = false;
	
	
	//stats
	global.playTimes = 0;
	global.mandatoryTutorial = 0;
	
	for (var i = 0; i <global.numberOfShips; i++)
	{
		ship = ds_map_find_value(global.shipList, i)
		if (ship.sprite != splayer)
		{
			ship.unlocked = 0;
		}
	}
}