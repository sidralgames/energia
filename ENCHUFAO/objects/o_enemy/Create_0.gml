/// @description Insert description here
// You can write your code in this editor
event_inherited();
alarm[10] = 30;
//lightEnemy= instance_create_layer(x,y,"LightEnemy",o_Light_Enemy);
isCounted=false;
bnc = 0.5;
_hp = 2;
cont = 500;
image_speed = 0.5;

enemySpeedInitial = 1.25
enemySpeed = enemySpeedInitial;

precision= random_range(1,2);
speed=random(1)+2;

state = ENEMYSTATE.CHASING;

enemyXP = 20;

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

if tile_meeting(x,y,"Tiles")
{
	instance_destroy()
}

