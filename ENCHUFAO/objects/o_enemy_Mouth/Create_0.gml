/// @description Insert description here
// You can write your code in this editor
event_inherited();
depth = layer_get_depth("Enemies");
slowMoPickUps = choose(3,4);
contBounce = 60;
alarm[10] = 30;
//lightEnemy= instance_create_layer(x,y,"LightEnemy",o_Light_Enemy);
isCounted=false;
bnc = 0.9;
_hp = 3;
cont = 500;
image_speed = 0.5;

enemySpeedInitial = 2
enemySpeedInitialFar = 0.25
enemySpeed = enemySpeedInitial;

precision= random_range(3,4);
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




if tile_meeting(x,y,"Tiles")
{
	instance_destroy()
}



isMegaEnemy = false;

cable = instance_create_layer(x,y,"Meteors", o_enemyMouth_Body);
anchor = cable.instAchor;





