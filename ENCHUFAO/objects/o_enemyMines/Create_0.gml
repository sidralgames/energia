/// @description Insert description here
// You can write your code in this editor
event_inherited();

enemyBestiaryNumber = global.enemyMinerBestiaryNumber;

isMotherShip = true;
slowMoPickUps = choose(3,4);
alertDist = 150;
alarm[10] = 30;
//lightEnemy= instance_create_layer(x,y,"LightEnemy",o_Light_Enemy);
isCounted=false;
closeToWall = false
bnc = 0.5;
_hp = 10;
cont = 500;
image_speed = 0.5;
changedSpeed = false;
contMinis = 100;
minisMin = 2;
minisMax = 5;
enemySpeedInitial = random_range(0.75, 1)
enemySpeed = enemySpeedInitial;

precision= random_range(1.2,1.35);
speed=enemySpeed;

state = ENEMYSTATE.CHASING;

enemyXP = global.enemyMothershipXP;

UnloadDistance = 350;

direction_ =direction;

alarm[1] = 0;
_speed=0;
off = 90;
len = 0;

xStart = x;
yStart = y;
maxDistance = 100;
waitingSpeed = random_range(0.4,0.7)
breakDistance = random_range(0.005, 0.05)
accelDistance = random_range(0.005, 0.05);
isMegaEnemy = false
isMega = irandom(5);


if tile_meeting(x,y,"Tiles")
{
	instance_destroy()
}
//if (isMega = 0) && (global.MegaEnemiesInLevel < global.MegaEnemiesInLevel_Max+1)
//{
//	isMegaEnemy = true;
//	global.MegaEnemiesInLevel+=1;
//	_hp = 25;
//	cable = instance_create_layer(x,y,"Cable", o_enemyCable);
//	minisMin = 3;
//	minisMax = 7;
//	sprite_index = s_enemyMothershipMega;
//}

hasShield = irandom(5);

if (hasShield = 0)
{
	CreateShieldEnemy(25, 0.75, s_shieldPurple); //hp, scale, sprite
}


