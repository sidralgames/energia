/// @description Insert description here
// You can write your code in this editor
randomize();

o_main.endingLevel = false;

contTiles = 20;
global.Go = false;

secretType = "";

global.enemiesMax =  min(60, 30 + global.level) //1 + (global.level * 2);
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
			SetupLevelBasic(1000, 600, irandom_range(40,44), irandom_range(38,42));
		}
		break;
		
		case "Secret":
		{
			level = choose("Snipers", "Minis", "Worms"); 
			
			switch(level)
			{
				case "Mejora":
				{
					secretType = "Mejora";
					SetupLevelSecret(250, 40, 28, 18, 2500, 2, DrawLevelMejora);
				}
				break;
				
				case "ChillRoom":
				{
					secretType = "ChillRoom";
					SetupLevelSecret(800,  irandom_range(44,40), irandom_range(32,30), 18, 2500, 4, DrawLevelChillRoom);
				}
				break;
				
				case "Snipers":
				{
					secretType = "Snipers";
					timesSpawner = irandom_range(3,5);
					SetupLevelSecret(600, 40, irandom_range(42,32), irandom_range(26,18), 2000, 3, DrawLevelMejora);
				}
				break;
				case "Minis":
				{
					secretType = "Minis";
					timesSpawner = irandom_range(3,5);
					SetupLevelSecret(500, 40, irandom_range(40,28), irandom_range(24,15), 2000, 3, DrawLevelMejora);
				}
				break;
				
				case "Worms":
				{
					secretType = "Worms";
					timesSpawner = irandom_range(2,4);
					SetupLevelSecret(800, 40, irandom_range(45,28), irandom_range(24,15), 2000, 2, DrawLevelMejora);
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
	SetupLevelTutorial(1000, 100);
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

