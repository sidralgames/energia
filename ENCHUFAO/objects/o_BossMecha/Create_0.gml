/// @description Insert description here
// You can write your code in this editor
event_inherited();
isBombable = false;
soundLaser = -1;
minBombTime = 60;
maxBombTime = 120;
clearWall = false;
recover = false;
recoverTime = 0;
punch = false;
isImmortal = true;
creatingEnemies = false;
offset = 0;
direBullet = 0;
attackingFast = false;
scale = 1
contIdl = 100;
contAttack = 0;
_angle = 0;
attack = 0;
bossSpeed = 0.7;
stopping = false;
contStop = 60;
bnc = 0.7;
diffX = 0;
diffY = 0;
precision = 1.1;
t = 6;
increment = choose(1,2,3); //degrees -- freq = 1 oscillation per second (1Hz)
amplitude = choose(1,2);
hp = 0;
dir1 = choose(90,270);
makeRoom = false;
laserCreated = false

//clone the x- and y-positions
enum BOSS2STATE
{
	START,
	IDLE,
	ATTACK
	
}

blueWidht = 20;
whiteWidht = 30;
whiteW = 10;
blueW = 30;
		
contExploTile = 0;
state = BOSS2STATE.START
sprite_index = s_bossMecha
image_speed = 0;
image_index = 0;
inside = instance_create_layer(x,y,"Enemies", o_BossMecha_Inside)
maxLenght = 800;
thisLenght = 800;
drawflash=true;
alarm[4] = 200;

