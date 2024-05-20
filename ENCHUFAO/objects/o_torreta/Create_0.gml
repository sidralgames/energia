inScreen = false;
checkInScreen = 0;
killedByPlayer = true;

enemyBestiaryNumber = global.enemyPewPewBestiaryNumber;
enemyWithLightBulb = false;

parado=false
type = collisionType.custom;
direction= point_direction(x, y, o_playerShip.x, o_playerShip.y)+choose(-90,-60,60,90);
length = 28;
current_recoil=0;
affectedByLaserTrap = false;
alarm[0]=400;
alarm[1]=430;

precision= choose(0.75,1,1.25,1.5,1.75,2);

image_speed=0;
finalTrail = false;
canBeHittedByPlayerLaser = false;
burned = false;
electrocutated = false;
slowed = false;
isImmortal = false;
hurts = false;
canBounce = false;

canHaveAShield = false;
canBeDestroyed = false;
isShield = false;
enemyIsMini = false;
_hp = 0;