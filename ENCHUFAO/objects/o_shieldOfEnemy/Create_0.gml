/// @description Insert description here
// You can write your code in this editor

contDiscount =random_range(30,60)
discounted = false;
event_inherited();
blinded = false;
blindedCont = 0;
inBlindArea = false;
blindFlash = 10;
canBeHittedByPlayerLaser = true;
scale = 1;
depth = layer_get_depth("Enemies")-1;
isShield = true;
canBounce = false;
image_speed = 0.5;
image_alpha = 0.5;
_hp = 10;
enemy = instance_nearest(x,y,o_enemyP)
isWormHitBox = false;
hurts = true;
canBeDestroyed = true;
thisEnemyBounce = false;
leavesTrail = false;
finalTrail = false;
enemyWithLight = false;
enemyWithLightBulb = false;



