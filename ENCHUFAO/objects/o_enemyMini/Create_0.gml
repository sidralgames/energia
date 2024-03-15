/// @description Insert description here
// You can write your code in this editor

enemyBestiaryNumber = 7;
event_inherited();
enemyIsMini = true;
type = collisionType.custom;
slowMoPickUps = choose(2,3);

alarm[10] = 30;
//lightEnemy= instance_create_layer(x,y,"LightEnemy",o_Light_Enemy);
isCounted=false;
bnc = 0.5;
_hp = 1;
cont = 500;
image_speed = 0.5;

enemySpeedInitial = random_range(1.8,2.1);
enemySpeed = enemySpeedInitial;

precision= random_range(3,4);
speed=enemySpeed;

state = ENEMYSTATE.CHASING;

enemyXP = global.enemyFastMiniXP;
activeDistance = random_range(170,200)
farSpeed = 1
farSpeedInitial = random_range(0.4,0.75)

direction_ =direction;

alarm[1] = 0;
_speed=0;
off = 90;
len = 0;

xStart = x;
yStart = y;
maxDistance = 100;
waitingSpeed = random_range(0.7,1)
breakDistance = random_range(0.005, 0.05)
accelDistance = random_range(0.005, 0.05);

if tile_meeting(x,y,"Tiles")
{
	instance_destroy()
}