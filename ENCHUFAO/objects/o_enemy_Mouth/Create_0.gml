/// @description Insert description here
// You can write your code in this editor
enemyBestiaryNumber = global.enemyPincherBestiaryNumber;
isOnlyDraw = false;
_colorBody = c_white;

event_inherited();

finalTrail = false;
fromBullet = false;
myTileMap = layer_tilemap_get_id("Tiles")

slowMoPickUps = choose(3,4);
contBounce = 60;
alarm[10] = 30;

isCounted=false;
bnc = 0.9;
_hp = choose(1,2);
cont = 500;
image_speed = 0.5;
contDiscount =random_range(30,60)
discounted = false;
enemyIsMini = true;

enemySpeedInitial = random_range(1.75,2)
enemySpeedInitialFar = 0.05
enemySpeed = enemySpeedInitial;

precision= random_range(3,4);
speed=0;

state = ENEMYSTATE.WAITING;

enemyXP = global.enemyStandardXP;

direction_ =direction;

alarm[1] = 0;
_speed=0;
off = 90;
len = 0;
bouncesWaiting = 0;
contTimeBounces = 0;
myPath = path_add();
xStart = x;
yStart = y;
maxDistance = 100;
waitingSpeed = random_range(0.4,0.7)
breakDistance = random_range(0.005, 0.05)
accelDistance = random_range(0.005, 0.05);
activeDistance = random_range(100, 150);
far = false;
diffYFar = 0;

died = false;
if !instance_exists(o_gameOver)
{
	if tile_meeting(x,y,"Tiles")
	{
		instance_destroy()
	}
}
isMegaEnemy = false;
anchor = -1;
isMega = irandom(5);
megaStated = false;
canBeMega = true;
isMegaDraw = false;
isOnlyDraw = false;
setDraw = false;
enemyWithLightBulb = false;
enemyWithLight = false;







