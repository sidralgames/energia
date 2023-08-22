/// @description Insert description here
// You can write your code in this editor

enum BOSSLILSHIPSTATE
{
	WAITING,
	CHASING
}

state = BOSSLILSHIPSTATE.WAITING;

_speed = 0;

xStart = x;
yStart = y;
maxDistance = 200;

enemySpeedInitial = 2
enemySpeed = enemySpeedInitial;

precision= random_range(3,3.5);
speed=random(1)+2;

waitingSpeed = random_range(0.4,0.7);
breakDistance = random_range(0.005, 0.05);
accelDistance = random_range(0.005, 0.05);