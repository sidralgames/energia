/// @description Insert description here
// You can write your code in this editor
randomize();


contTiles = 20;
global.Go = false;

secretType = "";

global.enemiesMax =  min(12, 3 + global.level) //1 + (global.level * 2);
global.totalEnemiesOnLevel = 0;
spawners=0;
spawnersSecret = 0;

enemiesMin = min(3,global.level+1);
enemiesMax = min(7,global.level+2);


timesSpawner = min(5, choose(0,1,2,3,4)+global.level-1)


timesTotal = 500;
timesBreach = min(8, global.level-2);
breachRetryTime = 60;
breachDuration = 3000;
spawningBreach = false;


if (global.goToSecretRoom)
{
	levelType = "Secret";
}
else
{
	if (global.level = 1) || (global.level = 9)
	{
		levelType = "Basic";
	}
	else if (global.level = 3) || (global.level = 11)
	{
		levelType = "Corridor";
	}
	else if (global.level = 5) || (global.level = 13)
	{
		levelType = "Big";
	}
	else
	{
		levelType = choose("Basic", "Big","Corridor");
	}
}

StrandedShipsInLevel = 0;
StrandedShipsInLevelMax = 1;
strandedShipOK = false;
creadaStrandedRed = false;


global.changingTiles = false;

if (room = Sala_0) //(levelType = 0)
{
	switch (levelType)
	{
		case "Basic":
		{
			SetupLevelBasic();
		}
		break;
		
		case "Secret":
		{
			level = choose("Worms") //choose("Mejora", "Snipers", "Minis", "Worms")
			switch(level)
			{
				case "Mejora":
				{
					secretType = "Mejora";
					SetupLevelSecret(250, 40, 28, 18, 2500, DrawLevelMejora);
				}
				break;
				case "Snipers":
				{
					secretType = "Snipers";
					timesSpawner = choose(4,5);
					SetupLevelSecret(800, 40, irandom_range(40,25), irandom_range(20,15), 2500, DrawLevelMejora);
				}
				break;
				case "Minis":
				{
					secretType = "Minis";
					timesSpawner = choose(4,5);
					SetupLevelSecret(800, 40, irandom_range(40,25), irandom_range(20,15), 2500, DrawLevelMejora);
				}
				break;
				
				case "Worms":
				{
					secretType = "Worms";
					timesSpawner = choose(4,5);
					SetupLevelSecret(800, 40, irandom_range(40,25), irandom_range(20,15), 2500, DrawLevelMejora);
				}
				break;
			}
		}
		break;
		
		case "Corridor":
		{
			SetupLevelCorridor();
		}
		break;
		
		case "Big":
		{
			SetupLevelBig();
		}
		break;
	}
}
else if (room = Sala_Tutorial)
{
	SetupLevelTutorial();
	levelType="Tutorial"
}
else if (room = Sala_ChillRoom)
{
	levelType="Big"
	SetupLevelChill();
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
alarm[0] = 15;
alarm[1] = 220;
alarm[2] = 50;
alarm[7] = 20;
alarm[3] = 300;
alarm[6] = 80 

