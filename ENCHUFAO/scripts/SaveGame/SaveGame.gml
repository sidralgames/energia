// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function SaveGame()
{
	global.inTutorial = false;
	
	FreeLightSurface();
	
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

	//---- PINCHER ----//
	ini_write_real("bestiary","pincher", global.bestiaryEnemyPincherUnlocked);
	ini_write_real("bestiary","pincherKills", global.enemyPincherKills);
	ini_write_real("bestiary","pincherKilledBy", global.enemyPincherKilledBy);
	
	//---- NIBBLADE ----//
	ini_write_real("bestiary","nibblade", global.bestiaryEnemyNibbladeUnlocked);
	ini_write_real("bestiary","nibbladeKills", global.enemyNibbladeKills);
	ini_write_real("bestiary","nibbladeKilledBy", global.enemyNibbladeKilledBy);

	//---- BOMBO ----//
	ini_write_real("bestiary","bombo", global.bestiaryEnemyBomboUnlocked);
	ini_write_real("bestiary","bomboKills", global.enemyBomboKills);
	ini_write_real("bestiary","bomboKilledBy", global.enemyBomboKilledBy);
	
	//---- PEWPEW ----//
	ini_write_real("bestiary","pewpew", global.bestiaryEnemyPewPewUnlocked);
	ini_write_real("bestiary","pewpewKills", global.enemyPewPewKills);
	ini_write_real("bestiary","pewpewKilledBy", global.enemyPewPewKilledBy);
	
	//---- MITOSON ----//
	ini_write_real("bestiary","mitoson", global.bestiaryEnemyMitosonUnlocked);
	ini_write_real("bestiary","mitosonKills", global.enemyMitosonKills);
	ini_write_real("bestiary","mitosonKilledBy", global.enemyMitosonKilledBy);
	
	//---- MITOSHIP ----//
	ini_write_real("bestiary","mitoship", global.bestiaryEnemyMitoshipUnlocked);
	ini_write_real("bestiary","mitoshipKills", global.enemyMitoshipKills);
	ini_write_real("bestiary","mitoshipKilledBy", global.enemyMitoshipKilledBy);
	
	//---- MITOTHREE ----//
	ini_write_real("bestiary","mitothree", global.bestiaryEnemyMitothreeUnlocked);
	ini_write_real("bestiary","mitothreeKills", global.enemyMitothreeKills);
	ini_write_real("bestiary","mitothreeKilledBy", global.enemyMitothreeKilledBy);
	
	//---- SOCKETSUCKER ----//
	ini_write_real("bestiary","socketsucker", global.bestiaryEnemySocketsuckerUnlocked);
	ini_write_real("bestiary","socketsuckerKills", global.enemySocketsuckerKills);
	ini_write_real("bestiary","socketsuckerKilledBy", global.enemySocketsuckerKilledBy);
	
	//---- LIL CRUSHER ----//
	ini_write_real("bestiary","lilcrusher", global.bestiaryEnemyBossCrusherUnlocked);
	ini_write_real("bestiary","lilcrusherKills", global.enemyBossCrusherKills);
	ini_write_real("bestiary","lilcrusherKilledBy", global.enemyBossCrusherKilledBy);
	
	//---- GRIPPER ----//
	ini_write_real("bestiary","gripper", global.bestiaryEnemyGripperUnlocked);
	ini_write_real("bestiary","gripperKills", global.enemyGripperKills);
	ini_write_real("bestiary","gripperKilledBy", global.enemyGripperKilledBy);
	
	//---- ENCHUFE MIMIC ----//
	ini_write_real("bestiary","mimic", global.bestiaryEnemyEnchufeMimicUnlocked);
	ini_write_real("bestiary","mimicKills", global.enemyEnchufeMimicKills);
	ini_write_real("bestiary","mimicKilledBy", global.enemyEnchufeMimicKilledBy);
	
	//---- MINER ----//
	ini_write_real("bestiary","miner", global.bestiaryEnemyMinerUnlocked);
	ini_write_real("bestiary","minerKills", global.enemyMinerKills);
	ini_write_real("bestiary","minerKilledBy", global.enemyMinerKilledBy);
	
	//---- OVNI ----//
	ini_write_real("bestiary","ovni", global.bestiaryEnemyOVNIUnlocked);
	ini_write_real("bestiary","ovniKills", global.enemyOVNIKills);
	ini_write_real("bestiary","ovniKilledBy", global.enemyOVNIKilledBy);
	
	//---- LASER TRAP ----//
	ini_write_real("bestiary","lasertrap", global.bestiaryEnemyLaserTrapUnlocked);
	ini_write_real("bestiary","lasertrapKills", global.enemyLaserTrapKills);
	ini_write_real("bestiary","lasertrapKilledBy", global.enemyLaserTrapKilledBy);
	
	//---- BAD CHIP ----//
	ini_write_real("bestiary","badchip", global.bestiaryEnemyBadChipUnlocked);
	ini_write_real("bestiary","badchipKills", global.enemyBadChipKills);
	ini_write_real("bestiary","badchipKilledBy", global.enemyBadChipKilledBy);
	
	//---- SHIELDER ----//
	ini_write_real("bestiary","shielder", global.bestiaryEnemyShielderUnlocked);
	ini_write_real("bestiary","shielderKills", global.enemyShielderKills);
	ini_write_real("bestiary","shielderKilledBy", global.enemyShielderKilledBy);
	
	//---- CAPSULE MIMIC ----//
	ini_write_real("bestiary","capsulemimic", global.bestiaryEnemyCapsuleMimicUnlocked);
	ini_write_real("bestiary","capsulemimicKills", global.enemyCapsuleMimicKills);
	ini_write_real("bestiary","capsulemimicKilledBy", global.enemyCapsuleMimicKilledBy);
	
	//---- FREEWORM ----//
	ini_write_real("bestiary","freeworm", global.bestiaryEnemyFreewormUnlocked);
	ini_write_real("bestiary","freewormKills", global.enemyFreewormKills);
	ini_write_real("bestiary","freewormKilledBy", global.enemyFreewormKilledBy);
	
	//---- WORMAGEDDON ----//
	ini_write_real("bestiary","wormageddon", global.bestiaryEnemyWormageddonUnlocked);
	ini_write_real("bestiary","wormageddonKills", global.enemyWormageddonKills);
	ini_write_real("bestiary","wormageddonKilledBy", global.enemyWormageddonKilledBy);
	
	//---- GUSANENE ----//
	ini_write_real("bestiary","gusanene", global.bestiaryEnemyBossWormUnlocked);
	ini_write_real("bestiary","gusaneneKills", global.enemyBossWormKills);
	ini_write_real("bestiary","gusaneneKilledBy", global.enemyBossWormKilledBy);
	
	
	
	
	

	ini_close();
}