/// @description Insert description here
// You can write your code in this editor

alarm[1] = 70;

oddsLaserV = max(10, 65 - global.level);
oddsLaserH = max(10, 65 - global.level);

oddsDisc = max(20, 200 - global.level);

if (room = Sala_BossWorm)
{
	oddsEnemyMouth = 7;
}
else
{
	if (global.level <=5)
	{
		oddsEnemyMouth = 25 - global.level;
	}
	else
	{
		oddsEnemyMouth = 10;
	}
}

oddsTurret = max(8,25 - global.level);

laserB = 1;
discB = 1;
max_length=300;
yy = y-20;
yyD = y+20;
xxL = x-20;
xxR = x+20;




// Inherit the parent event
event_inherited();

alarm[0] = 30;