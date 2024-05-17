/// @description Insert description here
// You can write your code in this editor
pathCont = 3;
inScreen = false;
checkInScreen = 0;
pathStarted = false
blinded = false;
blindedTime = 0;
contBlind = 0;
inBlindArea = false;
initialBlindFlash = global.initialBlindFlash;
blindFlash = initialBlindFlash;
enemyWithLight = true;
enemyWithLightBulb = true;
canStopChasing = false;
discounted = false;
keepChasingTime = 180;
keepChasing = true;
enemyIsWorm = false;
canBeHittedByPlayerLaser = true;
leavesTrail = true;
thisEnemyBounce = true;
isWormHitBox = false;
isWormHitBoxBoss = false;
hurts = true;
canBeDestroyed = true;
cable = -1;
contSearchMax = 5
contSearch = contSearchMax;
isSniper = false;

affectedByLaserTrap = true;

haveAShield = false;
canHaveAShield = true;
finalTrail = true;

alertDist = 150;

burned = false;
contBurnedTotalMax = 300;
contBurnedTotal = contBurnedTotalMax;
contBurnedMax = 100;
contBurned = contBurnedMax;
contBurnPartMax = 5;
contBurnPart = contBurnPartMax;

electrocutated = false;
contElectro = contBurnedMax;
contElectroPart = contBurnPartMax;
contElectroTotal = contBurnedTotalMax;

burnFlash = 0;
electroFlash = 0;
freezing = 0;
freeze = false;

isMegaEnemy = false;


rojo2= make_colour_rgb(158, 40, 53);

slowed = false;
slowedPeta = 0;

slowedContMax = 30;
slowedCont = slowedContMax;

repelled = false;
repelledTimeMax = 20;
repelledTime = repelledTimeMax;
myPath = path_add();

contPartsInitial = 5;
contParts = contPartsInitial;
isShield = false;
bulletDamageCalculated = false;
bulletDamageTime = 30;
contBulletDamage = bulletDamageTime;
isImmortal = false;
_angle = 0;
alarm[11] = random_range(30,60);
canBounce = false;
enemyIsMini = false;
type = collisionType.custom;
checkHP = false;
diffX = choose(random_range(-50, 50));
diffY = choose(random_range(-50, 50));
cont = 50;
isCounted = false;
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
_hp=3;
takeCover = false;
shocked = false;
waiting = true;
bounced = false;
electrocutated = false;
shocked = false;
tocado = false;
flashAlpha = 0;


global.totalEnemiesOnLevel+=1;
global.totalEnemies +=1;
WormBoss = false;