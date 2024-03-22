/// @description Insert description here
// You can write your code in this editor

event_inherited();
type = collisionType.custom;
muerto = false;
lasereado=false
muertoCount=100;
touched = false;
//global.enemigos+=1;
randomize();
depth = -1000;
direction= point_direction(x, y, o_targetBestiary.x, o_targetBestiary.y)+choose(-90,90);

_speed=random(0.7)+0.7;
speed = _speed;

xDiff = random_range(-20,20);
yDiff = random_range(-20,20);

image_speed=0.25;

image_xscale=1;
image_yscale=1;

tocado=false;
precision= random_range(1.25,2)


alarm[0]=50;
hp = 2;

vida=200;

enemyShooter = s_enemyMisil;
shooterTrail = false;
hitByLaser = false;







