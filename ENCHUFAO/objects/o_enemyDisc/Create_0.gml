/// @description Insert description here
// You can write your code in this editor

killedByPlayer = false;
isWormHitBoxBoss = false;
inScreen = false;
checkInScreen = 30;
alphaLight = 0;
enemyBestiaryNumber = global.enemyDiscBestiaryNumber;
blinded = false;
blindedTime = 0;
contBlind = 0;
inBlindArea = false;
initialBlindFlash = 23;
blindFlash = initialBlindFlash;
enemyWithLight = false;
enemyWithLightBulb = true;
slowedPeta = 0;
slowed = false;
freezing = 0;
freeze = false;
slowedContMax = 30;
slowedCont = slowedContMax;
discounted = false;
canBeHittedByPlayerLaser = true;
affectedByLaserTrap = true;
leavesTrail = true;
enemySpeedRampage = random_range(3.5, 4.5);
thisEnemyBounce = false;
isWormHitBox = false;
canBeDestroyed = true;
hurts = true;

burned = false;
finalTrail = false;


haveAShield = false;
canHaveAShield = true;
contBurnedTotalMax = 300;
contBurnedTotal = contBurnedTotalMax;
contBurnedMax = 100;
contBurned = contBurnedMax;
contBurnPartMax = 5;
contBurnPart = contBurnPartMax;
contElectro = contBurnedMax;
contElectroPart = contBurnPartMax;
contElectroTotal = contBurnedTotalMax;
electrocutated = false;
burnFlash = 0;
electroFlash = 0;
repelled = false;
repelledTimeMax = 20;
repelledTime = repelledTimeMax;


_angle=0;
isShield = false;
isImmortal = false
enemyIsMini = false;
canBounce = false;
type = collisionType.custom;
checkHP = false;
slowMoPickUps = 8;
flashAlpha = 0;
isCounted = false;
waiting = false;
hsp_final = 0
hsp_f = 0
vsp_final = 0
vsp_f = 0
crosshairSuper = false
cross = -1;
_hpush = 0;
_vpush = 0;
hsp_f =0;
vsp_f =0;
bnc = 0.5
shocked = false;
_hp = 5;
cont = 500;
image_speed = 0.5;

precision= choose(3.75,3);
speed=random(1)+1;

enemySpeedInitial = 0.1;
enemySpeed = enemySpeedInitial;

spinIdle = 2.5;
spin = spinIdle;
spinRampage = 15;

active = false;
startSpin = false;

tocado = false;
rampage = false;

direction_ =direction;

contPartsInitial = 2;
contParts = contPartsInitial;


alarm[1] = 0;
_speed=0;
off = 90;
len = 0;

hasShield = irandom(4);

//if (hasShield = 0)
//{
//	CreateShieldEnemy(10, 0.65, s_shieldPurple); //hp, scale, sprite
//}

discs = 4;

if tile_meeting(x,y,"Tiles")
{
	instance_destroy()
}

canRampage = false;
image_speed = 0;
state = 0;