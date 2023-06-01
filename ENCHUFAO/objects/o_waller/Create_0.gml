/// @description Insert description here
// You can write your code in this editor

randomize();

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

