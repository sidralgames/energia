/// @description Insert description here
// You can write your code in this editor
spawners=0;
randomize();
enemiesMin = min(3,global.level);
enemiesMax = min(7,global.level+1);
levelType = choose(0,0,0,1);

if (levelType = 0)
{
	SetupLevelBasic()
	levelType="Basic"
}
else if (levelType = 1)
{
	SetupLevelBasicWide()
	levelType="Basic Wide"
}
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

times = min(6, choose(0,0,1,1,1,2,2,2,3,4,5)+global.level)

timesTotal = 800;
