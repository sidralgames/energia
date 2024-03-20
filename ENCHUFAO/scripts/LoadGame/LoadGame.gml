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
	
	//--- MOTHERSHIP ---//
	global.bestiaryEnemyMothershipUnlocked = ini_read_real("bestiary","mini", 0);
	global.enemyMothershipKilledBy = ini_read_real("bestiary","mothershipKilledBy", 0);
	global.enemyMothershipKills = ini_read_real("bestiary","mothershipKills", 0);
	
	//--- MEGA MOTHERSHIP ---//
	global.bestiaryEnemyMothershipMegaUnlocked = ini_read_real("bestiary","mothershipMega", 0);
	global.enemyMothershipMegaKilledBy = ini_read_real("bestiary","mothershipMegaKilledBy", 0);
	global.enemyMothershipMegaKills = ini_read_real("bestiary","mothershipMegaKills", 0);
	
	//--- DISC ---//
	global.bestiaryEnemyDiscUnlocked = ini_read_real("bestiary","disc", 0);
	global.enemyDiscKilledBy = ini_read_real("bestiary","discKilledBy", 0);
	global.enemyDiscKills = ini_read_real("bestiary","discMegaKills", 0);
	
	//--- PINCHER ---//
	global.bestiaryEnemyPincherUnlocked = ini_read_real("bestiary","pincher", 0);
	global.enemyPincherKilledBy = ini_read_real("bestiary","pincherKilledBy", 0);
	global.enemyPincherKills = ini_read_real("bestiary","pincherKills", 0);

	//--- NIBBLADE ---//
	global.bestiaryEnemyNibbladeUnlocked = ini_read_real("bestiary","nibblade", 0);
	global.enemyNibbladeKilledBy = ini_read_real("bestiary","nibbladeKilledBy", 0);
	global.enemyNibbladeKills = ini_read_real("bestiary","nibbladeKills", 0);
	
	//--- BOMBO ---//
	global.bestiaryEnemyBomboUnlocked = ini_read_real("bestiary","bombo", 0);
	global.enemyBomboKilledBy = ini_read_real("bestiary","bomboKilledBy", 0);
	global.enemyBomboKills = ini_read_real("bestiary","bomboKills", 0);
	
	//--- PEWPEW ---//
	global.bestiaryEnemyPewPewUnlocked = ini_read_real("bestiary","pewpew", 0);
	global.enemyPewPewKilledBy = ini_read_real("bestiary","pewpewKilledBy", 0);
	global.enemyPewPewKills = ini_read_real("bestiary","pewpewKills", 0);
	
	//--- MITOSON ---//
	global.bestiaryEnemyMitosonUnlocked = ini_read_real("bestiary","mitoson", 0);
	global.enemyMitosonKilledBy = ini_read_real("bestiary","mitosonKilledBy", 0);
	global.enemyMitosonKills = ini_read_real("bestiary","mitosonKills", 0);
	
	//--- MITOSHIP ---//
	global.bestiaryEnemyMitoshipUnlocked = ini_read_real("bestiary","mitoship", 0);
	global.enemyMitoshipKilledBy = ini_read_real("bestiary","mitoshipKilledBy", 0);
	global.enemyMitoshipKills = ini_read_real("bestiary","mitoshipKills", 0);
	
	//--- MITOTHREE ---//
	global.bestiaryEnemyMitothreeUnlocked = ini_read_real("bestiary","mitothree", 0);
	global.enemyMitothreeKilledBy = ini_read_real("bestiary","mitothreeKilledBy", 0);
	global.enemyMitothreeKills = ini_read_real("bestiary","mitothreeKills", 0);
	
	//--- SOCKETSUCKER ---//
	global.bestiaryEnemySocketsuckerUnlocked = ini_read_real("bestiary","socketsucker", 0);
	global.enemySocketsuckerKilledBy = ini_read_real("bestiary","socketsuckerKilledBy", 0);
	global.enemySocketsuckerKills = ini_read_real("bestiary","socketsuckerKills", 0);
	
	//--- LIL CRUSHER ---//
	global.bestiaryEnemyBossCrusherUnlocked = ini_read_real("bestiary","lilcrusher", 0);
	global.enemyBossCrusherKilledBy = ini_read_real("bestiary","lilcrusherKilledBy", 0);
	global.enemyBossCrusherKills = ini_read_real("bestiary","lilcrusherKills", 0);
	
	//--- GRIPPER ---//
	global.bestiaryEnemyGripperUnlocked = ini_read_real("bestiary","gripper", 0);
	global.enemyGripperKilledBy = ini_read_real("bestiary","gripperKilledBy", 0);
	global.enemyGripperKills = ini_read_real("bestiary","gripperKills", 0);
	
	
	
	
	
	//----- GOD MODE DEFAULT OFF -----//
	global.godModeIsOn = false;
	global.infiniteEnergyIsOn = false;
	global.infiniteAmmoIsOn = false;
	global.infiniteHPIsOn = false;
	global.infiniteLaserIsOn = false;
	
	ini_close();
	
	
}