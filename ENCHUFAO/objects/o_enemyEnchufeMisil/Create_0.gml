/// @description Insert description here
// You can write your code in this editor
discounted = false;
canBeHittedByPlayerLaser = true;
affectedByLaserTrap = true;
finalTrail = false;
thisEnemyBounce = false;
isWormHitBox = false;
hurts = true;
canBeDestroyed = true;
electrocutated = false;
burnFlash = 0;
electroFlash = 0;
repelled = false;
repelledTimeMax = 20;
repelledTime = repelledTimeMax;
burned = false;
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
burnFlash = 0;
isShield = false;
isImmortal = false;
type = collisionType.custom;
flashAlpha = 0;
checkHP = false;
slowMoPickUps = 5;
cable = noone;
isCounted=false;
waiting = false;
enemyIsMini = false;
canBounce = false;
enchufe = instance_nearest(x,y,o_enchufe_Father)
version2 = false;
state = ENEMYSTATE.PLUGGED;
cable =-1;
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
bnc = 1
shocked = false;
canPlug = 0;
_angle = image_angle;
max_hp = 20;
_hp = max_hp;
cont = 500;
image_speed = 0.5;
precision= choose(3.75,3);

_speedMin = 1;
_speedMax = 1.5;

tocado = false;


direction_ =direction;


//tentacles.offs = 10
//tentacles2 = instance_create_layer(x,y+5,"Tentacles",oVine)
//tentacles2.offs =-10

alarm[1] = 0;
_speed=0;
off = 90;
len = 0;
sprite_plugged = s_enemyEnchufePlugged;

