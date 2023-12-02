/// @description Insert description here
// You can write your code in this editor
event_inherited();
global.maxWorms+=1;

leavesTrail = false;
isBossWorm = true;
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

enemySpeedInitial = random_range(2.2,2.3);
enemySpeedCrunch = 1.75;
enemySpeed = enemySpeedInitial;

precision= random_range(0.5,1);
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
boss = true;
isImmortal = true;


cable = instance_create_layer(x,y,"EnemiesHUEsub2", o_BossWorm_Body);
_hp = 15 + cable._segments*3;//6
hasShield = irandom(10);

contBreak = 0;
canBreak = false;
canBeDestroyed = false;
hurts = true;