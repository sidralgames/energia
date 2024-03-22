// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function LoadDefaultData()
{
	//--------SHIPS------//
	global.shipGreenUnlocked = 1;
	global.shipBlueUnlocked  = 0;
	global.shipRedUnlocked  = 0;
	global.shipDarkUnlocked  = 0;
	global.shipPurpleUnlocked  = 0;
	global.shipMP3Unlocked  = 0;
	
	//------- PLAYTIMES - MANDATORY TURORIAL? -----//
	global.playTimes = 0;
	global.mandatoryTutorial = 0;
	
	//-------- ACHIEVEMENTS --------//
	global.achNoBump = 0;
	global.ach500Enemies = 0;
	global.enemiesKilledTotalAch = 0;
	
	//-------- STATS ---------//
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
	
	//-------- GOD MODE -------//
	global.godModeIsOn = false;
	global.infiniteEnergyIsOn = false;
	global.infiniteAmmoIsOn = false;
	global.infiniteHPIsOn = false;
	global.infiniteLaserIsOn = false;
	
	
	
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
	
	//-- MEGA MOTHERSHIP --//
	global.bestiaryEnemyMothershipMegaUnlocked = 0;
	global.enemyMothershipMegaKilledBy = 0;
	global.enemyMothershipMegaKills = 0;
	
	//--- DISC ---//
	global.bestiaryEnemyDiscUnlocked = 0;
	global.enemyDiscKilledBy = 0;
	global.enemyDiscKills = 0;
	
	//--- PINCHER ---//
	global.bestiaryEnemyPincherUnlocked = 0;
	global.enemyPincherKilledBy = 0;
	global.enemyPincherKills = 0;
	
	//--- NIBBLADE ---//
	global.bestiaryEnemyNibbladeUnlocked = 0;
	global.enemyNibbladeKilledBy = 0;
	global.enemyNibbladeKills = 0;

	//--- BOMBO ---//
	global.bestiaryEnemyBomboUnlocked = 0;
	global.enemyBomboKilledBy = 0;
	global.enemyBomboKills = 0;
	
	//--- PEWPEW ---//
	global.bestiaryEnemyPewPewUnlocked = 0;
	global.enemyPewPewKilledBy = 0;
	global.enemyPewPewKills = 0;
	
	//--- MITOSON ---//
	global.bestiaryEnemyMitosonUnlocked = 0;
	global.enemyMitosonKilledBy = 0;
	global.enemyMitosonKills = 0;
	
	//--- MITOSHIP ---//
	global.bestiaryEnemyMitoshipUnlocked = 0;
	global.enemyMitoshipKilledBy = 0;
	global.enemyMitoshipKills = 0;
	
	//--- MITOTHREE ---//
	global.bestiaryEnemyMitothreeUnlocked = 0;
	global.enemyMitothreeKilledBy = 0;
	global.enemyMitothreeKills = 0;
	
	//--- SOCKETSUCKER ---//
	global.bestiaryEnemySocketsuckerUnlocked = 0;
	global.enemySocketsuckerKilledBy = 0;
	global.enemySocketsuckerKills = 0;
	
	//---- LIL CRUSHER ----//
	global.bestiaryEnemyBossCrusherUnlocked = 0;
	global.enemyBossCrusherKilledBy = 0;
	global.enemyBossCrusherKills = 0;
	
	//--- GRIPPER ---//
	global.bestiaryEnemyGripperUnlocked = 0;
	global.enemyGripperKilledBy = 0;
	global.enemyGripperKills = 0;
	
	//--- ENCHUFE MIMIC ---//
	global.bestiaryEnemyEnchufeMimicUnlocked = 0;
	global.enemyEnchufeMimicKilledBy = 0;
	global.enemyEnchufeMimicKills = 0;
	
	//--- MINER	---//
	global.bestiaryEnemyMinerUnlocked = 0;
	global.enemyMinerKilledBy = 0;
	global.enemyMinerKills = 0;
	
	//--- OVNI	---//
	global.bestiaryEnemyOVNIUnlocked = 0;
	global.enemyOVNIKilledBy = 0;
	global.enemyOVNIKills = 0;
	
	//--- LASER TRAP ---//
	global.bestiaryEnemyLaserTrapUnlocked = 0;
	global.enemyLaserTrapKilledBy = 0;
	global.enemyLaserTrapKills = 0;
	
	//--- BAD CHIP ---//
	global.bestiaryEnemyBadChipUnlocked = 0;
	global.enemyBadChipKilledBy = 0;
	global.enemyBadChipKills = 0;
	
	//--- SHIELDER ---//
	global.bestiaryEnemyShielderUnlocked = 0;
	global.enemyShielderKilledBy = 0;
	global.enemyShielderKills = 0;
	
	//--- CAPSULE MIMIC ---//
	global.bestiaryEnemyCapsuleMimicUnlocked = 0;
	global.enemyCapsuleMimicKilledBy = 0;
	global.enemyCapsuleMimicKills = 0;
	
	

}