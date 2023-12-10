// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function LoadGame()
{
	//--------SHIPS------//
	ini_open("EnxufaoData.ini");
	global.shipGreenUnlocked = ini_read_real("ships","shipGreenUnlocked", 0);
	global.shipBlueUnlocked = ini_read_real("ships","shipBlueUnlocked", 0);
	global.shipRedUnlocked = ini_read_real("ships","shipRedUnlocked", 0);
	global.shipDarkUnlocked = ini_read_real("ships","shipDarkUnlocked", 0);
	global.shipPurpleUnlocked = ini_read_real("ships","shipPurpleUnlocked", 0);
	global.shipMP3Unlocked = ini_read_real("ships","shipMP3Unlocked", 0);
	
	global.achNoBump =  ini_read_real("ach","noBump", 0);
	global.ach500Enemies =  ini_read_real("ach","500Enemies", 0);
	global.enemiesKilledTotalAch = ini_read_real("ach","EnemiesKilledTotal", 0);
	
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
	
	
	global.godModeIsOn = false;
	global.infiniteEnergyIsOn = false;
	global.infiniteAmmoIsOn = false;
	global.infiniteHPIsOn = false;
	global.infiniteLaserIsOn = false;
	
	ini_close();
	
	
}