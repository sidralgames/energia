/// @description Insert description here
// You can write your code in this editor
isWormHitBoxBoss = false;
killedByPlayer = false;
inScreen = false;
checkInScreen = 0;
discounted = false;
blinded = false;
blindedTime = 0;
contBlind = 0;
inBlindArea = false;
initialBlindFlash = 23;
blindFlash = initialBlindFlash;
shocked = false;
canBeHittedByPlayerLaser = true;
finalTrail = true;
thisEnemyBounce = false;
isWormHitBox = false;
hurts = true;
canBeDestroyed = true;
type = collisionType.custom;
_hp = 20;
image_speed = 0.5;
enemyBelongs = instance_nearest(x,y,o_enemy_Waiting_Shield)
isShield = true;
canBounce = false;
enemyIsMini = false;
isMotherShip = false;
isImmortal = false;
repelled = false;
repelledTimeMax = 20;
repelledTime = repelledTimeMax;
canHaveAShield = false;
haveAShield = false;
state = -1;
affectedByLaserTrap = true;
enemyBestiaryNumber = enemyBelongs.enemyBestiaryNumber;
enemyWithLight = false;
enemyWithLightBulb = false;
