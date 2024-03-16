// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function LoadGame()
{
	ini_open("EnxufaoData.ini");
	
	//-------- PLAYER SHIPS --------//
	global.shipGreenUnlocked = ini_read_real("ships","shipGreenUnlocked", 0);
	global.shipBlueUnlocked = ini_read_real("ships","shipBlueUnlocked", 0);
	global.shipRedUnlocked = ini_read_real("ships","shipRedUnlocked", 0);
	global.shipDarkUnlocked = ini_read_real("ships","shipDarkUnlocked", 0);
	global.shipPurpleUnlocked = ini_read_real("ships","shipPurpleUnlocked", 0);
	global.shipMP3Unlocked = ini_read_real("ships","shipMP3Unlocked", 0);
	
	//----- INGAME ACHIEVEMENTS --------//
	global.achNoBump =  ini_read_real("ach","noBump", 0);
	global.ach500Enemies =  ini_read_real("ach","500Enemies", 0);
	global.enemiesKilledTotalAch = ini_read_real("ach","EnemiesKilledTotal", 0);
	
	//------- TOTAL GAME STATS -------//
	global.bestLevelRun = ini_read_real("stats","BestRun", 0);
	global.HighScore = ini_read_real("stats","HighScore", 0);
	global.totalDeaths = ini_read_real("stats","TotalDeaths", 0);
	global.totalBullets = ini_read_real("stats","TotalBullets", 0);
	global.totalBombs = ini_read_real("stats","TotalBombs", 0);
	global.totalPlugs = ini_read_real("stats","TotalPlugs", 0);
	global.totalPETAS = ini_read_real("stats","TotalPETAS", 0);
	global.totalBumps = ini_read_real("stats","TotalBumps", 0);
	global.slowmilisecs = ini_read_real("stats","slowmilisecs", 0);
	global.connectedmilisecs = ini_read_real("stats","connectedmilisecs", 0);
	
	
	//------- PLAY TIMES - MANDATORY TUTORIAL?--------//
	global.playTimes = ini_read_real("main","playTimes", 0);
	global.mandatoryTutorial = ini_read_real("main","mandatoryTutorial", 0);
	
	//--------  ---------//
	global.enemiesInBestiary = ini_read_real("bestiary","number", 0);
	

	

	
	
	

	
	//---------- BESTIARY && KILLS ----------//
	//--- BASIC ---//
	global.bestiaryEnemyBasicUnlocked = ini_read_real("bestiary","basic", 0);
	global.enemyBasicKilledBy = ini_read_real("bestiary","basicKilledBy", 0);
	global.enemyBasicKills = ini_read_real("bestiary","basicKills", 0);

	//--- BASIC MEGA---//
	global.bestiaryEnemyBasicMegaUnlocked = ini_read_real("bestiary","basicMega", 0);
	global.enemyBasicMegaKilledBy = ini_read_real("bestiary","basicMegaKilledBy", 0);
	global.enemyBasicMegaKills = ini_read_real("bestiary","basicMegaKills", 0);

	//--- FAST ---//
	global.bestiaryEnemyFastUnlocked = ini_read_real("bestiary","fast", 0);
	global.enemyFastKilledBy = ini_read_real("bestiary","fastKilledBy", 0);
	global.enemyFastKills = ini_read_real("bestiary","fastKills", 0);
	
	//--- DISP ---//
	global.bestiaryEnemyDispUnlocked = ini_read_real("bestiary","disp", 0);
	global.enemyDispKilledBy = ini_read_real("bestiary","dispKilledBy", 0);
	global.enemyDispKills = ini_read_real("bestiary","dispKills", 0);

	//--- SNIPER ---//
	global.bestiaryEnemySniperUnlocked = ini_read_real("bestiary","sniper", 0);
	global.enemySniperKilledBy = ini_read_real("bestiary","sniperKilledBy", 0);
	global.enemySniperKills = ini_read_real("bestiary","sniperKills", 0);
	
	//--- SNIPER MEGA ---//
	global.bestiaryEnemySniperMegaUnlocked = ini_read_real("bestiary","sniperMega", 0);
	global.enemySniperMegaKilledBy = ini_read_real("bestiary","sniperMegaKilledBy", 0);
	global.enemySniperMegaKills = ini_read_real("bestiary","sniperMegaKills", 0);
	
	//--- SHIELD ---//
	global.bestiaryEnemyShieldUnlocked = ini_read_real("bestiary","shield", 0);
	global.enemyShieldKilledBy = ini_read_real("bestiary","shieldKilledBy", 0);
	global.enemyShieldKills = ini_read_real("bestiary","shieldKills", 0);
	
	//--- MINI ---//
	global.bestiaryEnemyMiniUnlocked = ini_read_real("bestiary","mini", 0);
	global.enemyMiniKilledBy = ini_read_real("bestiary","miniKilledBy", 0);
	global.enemyMiniKills = ini_read_real("bestiary","miniKills", 0);
	
	//--- MINI ---//
	global.bestiaryEnemyMothershipUnlocked = ini_read_real("bestiary","mini", 0);
	global.enemyMothershipKilledBy = ini_read_real("bestiary","mothershipKilledBy", 0);
	global.enemyMothershipKills = ini_read_real("bestiary","mothershipKills", 0);
	
	
	//----- GOD MODE DEFAULT OFF -----//
	global.godModeIsOn = false;
	global.infiniteEnergyIsOn = false;
	global.infiniteAmmoIsOn = false;
	global.infiniteHPIsOn = false;
	global.infiniteLaserIsOn = false;
	
	ini_close();
	
	
}