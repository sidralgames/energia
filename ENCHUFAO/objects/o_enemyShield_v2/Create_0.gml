/// @description Insert description here
// You can write your code in this editor
event_inherited();

enemyBestiaryNumber = global.enemyShielderBestiaryNumber;

thisEnemyBounce = false;
isMotherShip = false;
slowMoPickUps = choose(3,4);
minContShield = 200;
maxContShield = 400;
alertDist = 150;
alarm[10] = 30;
//lightEnemy= instance_create_layer(x,y,"LightEnemy",o_Light_Enemy);
isCounted=false;
closeToWall = false
bnc = 0.5;
_hp = 8;
cont = 500;
image_speed = 0.5;
changedSpeed = false;
contShield = 100;
minisMin = 2;
minisMax = 5;
enemySpeedInitial = random_range(1.2, 1.3)
enemySpeed = enemySpeedInitial;

precision= random_range(1.6,1.75);
speed=enemySpeed;

state = ENEMYSTATE.CHASING;

enemyXP = global.enemyMothershipXP;

makeShieldDistance = 350;

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
isMegaEnemy = false;
isMega = irandom(5);

canHaveAShield = false;
hasShield = irandom(0);


if tile_meeting(x,y,"Tiles")
{
	instance_destroy()
}

if (hasShield = 0)
{
	CreateShieldEnemy(15, 0.85, s_shieldPurple); //hp, scale, sprite
}

