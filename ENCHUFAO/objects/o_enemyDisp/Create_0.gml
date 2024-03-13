/// @description Insert description here
// You can write your code in this editor
event_inherited();
type = collisionType.custom;
slowMoPickUps = choose(4,5);

enemyBestiaryNumber = 3;

alarm[10] = 30;
isCounted = false;
bnc = 0.5;
_hp = 3;
cont = 500;
image_speed = 0.5;

enemySpeedInitial = 1.25
enemySpeed = enemySpeedInitial;

precision= random_range(1,2);
speed=random(1)+2;

state = ENEMYSTATE.CHASING;

enemyXP = global.enemyDispXP;

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


hasShield = irandom(10);

if (hasShield = 0)
{
	CreateShieldEnemy(20, 0.7, s_shieldPurple); //hp, scale, sprite
}


if tile_meeting(x,y,"Tiles")
{
	instance_destroy()
}

