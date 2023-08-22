// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function LoadGame()
{
	//--------SHIPS------//
	ini_open("EnxufaoData.ini");
	global.shipGreenUnlocked = ini_read_real("ships","shipGreenUnlocked", 1);
	global.shipBlueUnlocked = ini_read_real("ships","shipBlueUnlocked", 0);
	global.shipRedUnlocked = ini_read_real("ships","shipRedUnlocked", 0);
	global.shipDarkUnlocked = ini_read_real("ships","shipDarkUnlocked", 0);
	global.shipPurpleUnlocked = ini_read_real("ships","shipPurpleUnlocked", 0);
	global.achNoBump =  ini_read_real("ach","noBump", 0);
	global.ach500Enemies =  ini_read_real("ach","500Enemies", 0);
	global.enemiesKilledTotalAch = ini_read_real("ach","EnemiesKilledTotal", 0);
	global.bestLevelRun = ini_read_real("stats","BestRun", 0);
	global.totalDeaths = ini_read_real("stats","TotalDeaths", 0);
	global.totalBullets = ini_read_real("stats","TotalBullets", 0);
	ini_close();
	
	
}