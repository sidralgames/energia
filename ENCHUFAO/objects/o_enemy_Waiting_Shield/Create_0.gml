/// @description Insert description here
// You can write your code in this editor
enemyBestiaryNumber = global.enemyShieldBestiaryNumber;
enemyWithLight = false;
canStopChasing = false;
slowedPeta = 0;
keepChasingTime = 180;
keepChasing = true;
discounted = false;
canBeHittedByPlayerLaser = true;
finalTrail = true;
affectedByLaserTrap = true;
enemyIsWorm = false;
thisEnemyBounce = false;
leavesTrail = true;
isWormHitBox = false;
hurts = true;
canBeDestroyed = true;
type = collisionType.custom;
alertDist = 150;
isShield = false;
myPath = path_add();
isMegaEnemy = false;
burned = false;
canHaveAShield = true;
hasShield = false;
contBurnedTotalMax = 300;
contBurnedTotal = contBurnedTotalMax;
contBurnedMax = 100;
contBurnPartMax = 5;
contBurnPart = contBurnPartMax;
contBurned = contBurnedMax;

contElectro = contBurnedMax;
contElectroPart = contBurnPartMax;
contElectroTotal = contBurnedTotalMax;
electrocutated = false;
burnFlash = 0;
electroFlash = 0;



rojo2= make_colour_rgb(158, 40, 53);

freezing = 0;
freeze = false;
slowed = false;

slowedContMax = 30;
slowedCont = slowedContMax;

repelled = false;
repelledTimeMax = 20;
repelledTime = repelledTimeMax;


isImmortal = false;
enemyIsMini = false;
canBounce = false;
checkHP = false;
slowMoPickUps = choose(6,7);
flashAlpha = 0;
alarm[10] = 30;
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
_hp = 6;
cont = 500;
image_speed = 0.5;
enemySpeedInitial = 1.15;
enemySpeed = enemySpeedInitial;
precision= 2
speed=random(1)+1;
isCounted = false;
tocado = false;
waiting = false;
haveAShield = false;
direction_ =direction;
state = ENEMYSTATE.WAITING;
existsShield = false;

_angle = 0;
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
shield = noone;
enemyXP = global.enemyShieldXP;

contNextShield = random_range(120, 200);

if tile_meeting(x,y,"Tiles")
{
	instance_destroy()
}




