/// @description Insert description here
// You can write your code in this editor
event_inherited();
enemyWithLight = false;
enemyBestiaryNumber = global.enemyFreewormBestiaryNumber;

leavesTrail = false;
isBossWorm = false;
thisEnemyBounce = false;
offBullet = 7;
bulletVelo = 2.75;

plugging = false
unplugging = false;
plugged = false;
contPluggedMin = 400;
contPluggedMax = 800;
contCanPlug = 60;
contPlugged = random_range(contPluggedMin, contPluggedMax)
contDispInitial = 60;
contDisp = contDispInitial;
contDispTotalMax = 240
contDispTotal = contDispTotalMax;
slowMoPickUps = choose(8,9);

alarm[10] = 30;
//lightEnemy= instance_create_layer(x,y,"LightEnemy",o_Light_Enemy);
isCounted=false;
bnc = 0.5;

cont = 500;
image_speed = 0.5;

enemySpeedInitial = random_range(1.2,1.6);
enemySpeedCrunch = 1;
enemySpeed = enemySpeedInitial;

precision= random_range(1.5,1.75);
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


_tilemap_id = layer_tilemap_get_id("Tiles");


isMegaEnemy = false;
isMega = irandom(5);
oddsBattery = 5;


cable = instance_create_layer(x,y,"EnemiesHUEsub5", o_enemyMouth_Body_Free);
_hp = 10 + cable._segments*4;
hasShield = irandom(10);

contBreak = 0;
canBreak = false;
canBeDestroyed = false;


movementDistancePlugged = cable._segments*7