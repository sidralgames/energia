// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function SaveGame()
{
	ini_open("EnxufaoData.ini");
	
	//-------- PLAYER SHIPS --------//
	ini_write_real("ships","shipGreenUnlocked", global.shipGreenUnlocked );
	ini_write_real("ships","shipBlueUnlocked", global.shipBlueUnlocked );
	ini_write_real("ships","shipRedUnlocked", global.shipRedUnlocked);
	ini_write_real("ships","shipDarkUnlocked", global.shipDarkUnlocked);
	ini_write_real("ships","shipPurpleUnlocked", global.shipPurpleUnlocked);
	ini_write_real("ships","shipMP3Unlocked", global.shipMP3Unlocked);
	
	//----- INGAME ACHIEVEMENTS --------//	
	ini_write_real("ach","noBump", global.achNoBump);
	ini_write_real("ach","500Enemies", global.ach500Enemies);
	ini_write_real("ach","EnemiesKilledTotal", global.enemiesKilledTotalAch);
	
	//------- PLAY TIMES - MANDATORY TUTORIAL?--------//		
	ini_write_real("main","playTimes", global.playTimes);
	ini_write_real("main","mandatoryTutorial", global.mandatoryTutorial);
	
	//------- TOTAL GAME STATS -------//
	ini_write_real("stats","BestRun", global.bestLevelRun);
	ini_write_real("stats","HighScore", global.HighScore);
	ini_write_real("stats","TotalDeaths", global.totalDeaths);
	ini_write_real("stats","TotalBullets", global.totalBullets);
	ini_write_real("stats","TotalBombs", global.totalBombs);
	ini_write_real("stats","TotalPlugs", global.totalPlugs);
	ini_write_real("stats","TotalPETAS", global.totalPETAS);
	ini_write_real("stats","slowmilisecs", global.slowmilisecs);
	ini_write_real("stats","connectedmilisecs", global.connectedmilisecs);
	ini_write_real("stats","TotalBumps", global.totalBumps);
	
	//-------- BESTIARY ---------//
	ini_write_real("bestiary","number", global.enemiesInBestiary);

	//-------- KILLS ---------//
	
	//---- BASIC ----//
	ini_write_real("bestiary","basic", global.bestiaryEnemyBasicUnlocked);
	ini_write_real("bestiary","basicKills", global.enemyBasicKills);
	ini_write_real("bestiary","basicKilledBy", global.enemyBasicKilledBy);
	
	//---- BASIC MEGA ----//
	ini_write_real("bestiary","basicMega", global.bestiaryEnemyBasicMegaUnlocked);
	ini_write_real("bestiary","basicMegaKills", global.enemyBasicMegaKills);
	ini_write_real("bestiary","basicMegaKilledBy", global.enemyBasicMegaKilledBy);
	
	//---- FAST ----//
	ini_write_real("bestiary","fast", global.bestiaryEnemyFastUnlocked);
	ini_write_real("bestiary","fastKills", global.enemyFastKills);
	ini_write_real("bestiary","fastKilledBy", global.enemyFastKilledBy);
	
	//---- DISP ----//
	ini_write_real("bestiary","disp", global.bestiaryEnemyDispUnlocked);
	ini_write_real("bestiary","dispKills", global.enemyDispKills);
	ini_write_real("bestiary","dispKilledBy", global.enemyDispKilledBy);

	//---- SNIPER ----//
	ini_write_real("bestiary","sniper", global.bestiaryEnemySniperUnlocked);
	ini_write_real("bestiary","sniperKills", global.enemySniperKills);
	ini_write_real("bestiary","sniperKilledBy", global.enemySniperKilledBy);
	
	//---- SNIPER MEGA ----//
	ini_write_real("bestiary","sniperMega", global.bestiaryEnemySniperMegaUnlocked);	
	ini_write_real("bestiary","sniperMegaKills", global.enemySniperMegaKills);
	ini_write_real("bestiary","sniperMegaKilledBy", global.enemySniperKilledBy);
	
	//---- SHIELD ----//
	ini_write_real("bestiary","shield", global.bestiaryEnemyShieldUnlocked);
	ini_write_real("bestiary","shieldKills", global.enemyShieldKills);
	ini_write_real("bestiary","shieldKilledBy", global.enemyShieldKilledBy);
	
	//---- MINI ----//
	ini_write_real("bestiary","mini", global.bestiaryEnemyMiniUnlocked);
	ini_write_real("bestiary","miniKills", global.enemyMiniKills);
	ini_write_real("bestiary","miniKilledBy", global.enemyMiniKilledBy);
	
	//---- MOTHERSHIP ----//
	ini_write_real("bestiary","mothership", global.bestiaryEnemyMothershipUnlocked);
	ini_write_real("bestiary","mothershipKills", global.enemyMothershipKills);
	ini_write_real("bestiary","mothershipKilledBy", global.enemyMothershipKilledBy);
	
	//---- MEGA MOTHERSHIP ----//
	ini_write_real("bestiary","mothershipMega", global.bestiaryEnemyMothershipMegaUnlocked);
	ini_write_real("bestiary","mothershipMegaKills", global.enemyMothershipMegaKills);
	ini_write_real("bestiary","mothershipMegaKilledBy", global.enemyMothershipMegaKilledBy);
	
	//---- DISC ----//
	ini_write_real("bestiary","disc", global.bestiaryEnemyDiscUnlocked);
	ini_write_real("bestiary","discKills", global.enemyDiscKills);
	ini_write_real("bestiary","discKilledBy", global.enemyDiscKilledBy);
	

	ini_close();
}