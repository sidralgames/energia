/// @description Insert description here
// You can write your code in this editor
randomize();

SetHUE();
contTiles = 2;
global.Go = false;
global.enemies = 0;
global.enemiesMax =  min(12, 3 + global.level) //1 + (global.level * 2);
global.totalEnemiesOnScreen = 0;
spawners=0;

enemiesMin = min(3,global.level+1);
enemiesMax = min(7,global.level+2);
levelType = choose(0,0,0);

StrandedShipsInLevel = 0;
StrandedShipsInLevelMax = 1;
strandedShipOK = false;
creadaStrandedRed = false;

alarm[6] = 50 
global.changingTiles = false;

if (levelType = 0)
{
	SetupLevelBasic()
	levelType="Basic"
}
//else if (levelType = 1)
//{
//	SetupLevelBasicWide()
//	levelType="Basic Wide"
//}
//else if (levelType = 2)
//{
//	SetupLevelBig()
//	levelType="Big"
//}
//else if (levelType = 3)
//{
//	SetupLevelCorridor()
//	levelType="Corridor"
//}
alarm[0] = 20;
alarm[1] = 220;
alarm[2] = 50;
alarm[3] = 100;

times = min(4, choose(0,1,2,3,4)+global.level-1)


timesTotal = 500;
timesBreach = global.level-2;
breachRetryTime = 40;
breachDuration = 3000;
spawningBreach = false;
