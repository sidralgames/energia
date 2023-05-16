/// @description Insert description here
// You can write your code in this editor
randomize();

levelType = choose(0,1,2,3);

if (levelType = 0)
{
	SetupLevelBasic()
	levelType="Basic"
}
else if (levelType = 1)
{
	SetupLevelBig()
	levelType="Big"
}
else if (levelType = 2)
{
	SetupLevelBasicWide()
	levelType="Basic Wide"
}
else if (levelType = 3)
{
	SetupLevelCorridor()
	levelType="Corridor"
}


