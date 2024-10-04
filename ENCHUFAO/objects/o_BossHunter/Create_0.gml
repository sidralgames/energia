/// @description Insert description here
// You can write your code in this editor
event_inherited();
haveShoot = false;
timeShootingLaser = 0;
isShootingLaser = false;
repeatAnimation = false;
laserAttackSprite = s_bossHunter_laser;
bouncerAttackSprite = s_bossHunter_bouncer;
idleSprite = s_bossHunter;

enemyBestiaryNumber = global.enemyGripperBestiaryNumber;

isBossWorm = false;
enemyIsWorm = true;
thisEnemyBounce = false;
slowMoPickUps = choose(3,4);

alarm[10] = 30;
//lightEnemy= instance_create_layer(x,y,"LightEnemy",o_Light_Enemy);
isCounted=false;
bnc = 0.5;
_hp = 200;
cont = 500;
image_speed = 0.5;

attackMode = false;
enterAttackModeCont  = 50;

enemySpeedInitial = random_range(1.25,2)
enemySpeedInitialAux = enemySpeedInitial;
enemySpeedLaserAttack = 0.2
enemySpeed = enemySpeedInitial;

precisionInitial = random_range(2,4)
precisionLaserAttack = 0.45;
precision= precisionInitial;
speed=random(1)+2;

state = ENEMYSTATE.CHASING;

enemyXP = global.enemyStandardXP;

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

plugging = false
unplugging = false;
plugged = false;
contPluggedMin = 400;
contPluggedMax = 800;
contCanPlug = 60;
contPlugged = random_range(contPluggedMin, contPluggedMax)


if tile_meeting(x,y,"Tiles")
{
	instance_destroy()
}

isMegaEnemy = false;
isMega = irandom(5);
megaStated = false;
oddsBattery = 5;

timeAttackingBounce = random_range(300,500)
attackBouncerCont = 0;
isAttackingBouncer = false;
bouncerCreated = false;
changeCable = false;
cableOff = 5;
cableXPos = x;
cableYPos = y;
depth = layer_get_depth("EnemiesHUESub3")
cable = instance_create_layer(cableXPos,cableYPos,"EnemiesHUESub5", o_CableBossHunter);




hasShield = irandom(10);

movementDistancePlugged = cable._segments*10


