/// @description Insert description here
// You can write your code in this editor
event_inherited();

thisEnemyBounce = false;
isMotherShip = true;
slowMoPickUps = choose(3,4);
alertDist = 250;
canAim = random_range(100,200);

alarm[10] = 30;
//lightEnemy= instance_create_layer(x,y,"LightEnemy",o_Light_Enemy);
isCounted=false;
closeToWall = false
bnc = 0.5;
_hp = 5;
cont = 500;
image_speed = 0.5;
changedSpeed = false;
contAim = 300;
minisMin = 2;
minisMax = 5;


contLaser = 0;
isSniper = true;
isBomber = false;
maxLenght =600;
reloadTime =400;


playerAimed = false;


playerTargeted = false;
aiming = false;


state = ENEMYSTATE.WAITING;
contDispMax = 60;
contDisp = contDispMax;
enemyXP = global.enemyMothershipXP;

recoil = 0;

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
bulletVelo = 5.75;

isMegaEnemy = false
isMega = irandom(4);

enemySpeedInitial = random_range(0.5, 0.75);
precisionInitial = 2;
precisionPlayer = 0.2;

offBullet = 1.75;
enemyBestiaryNumber = 4;
oddsBattery = 2;
if (isMega = 0) && (room != Sala_Tutorial)
{
	global.MegaEnemiesInLevel+=1;
	sprite_index = s_enemySniperMega;
	bulletVelo = 6.5;
	isMegaEnemy = true;
	enemyBestiaryNumber = 5;
	_hp = 12;
	offBullet = 2.5;
	precisionInitial = 2.25;
	precisionPlayer = 0.3;
	
	if (global.BatteriesInLevel <= global.BatteriesInLevel_Max)
	{
		if irandom(oddsBattery) = oddsBattery
		{
			cable = instance_create_layer(x,y,"Cable", o_enemyCable);
			global.BatteriesInLevel+=1;
		}
		else
		{
			cable = -1;
		}
	}
}

enemySpeed = enemySpeedInitial;
precision= precisionInitial;
speed=enemySpeed;

hasShield = irandom(5);

if (hasShield = 0)
{
	CreateShieldEnemy(20, 0.75, s_shieldPurple); //hp, scale, sprite
}


if tile_meeting(x,y,"Tiles")
{
	instance_destroy()
}