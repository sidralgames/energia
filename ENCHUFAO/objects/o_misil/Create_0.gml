/// @description Insert description here
// You can write your code in this editor
muerto = false;
lasereado=false
muertoCount=100;
//global.enemigos+=1;
randomize();
direction= point_direction(x, y, o_playerShip.x, o_playerShip.y)+choose(random_range(-90,90));

_speed=random(1)+1;
speed = _speed;


depth=-y;
image_speed=0.25;

image_xscale=1;
image_yscale=1;

tocado=false;
precision= choose(0.75,1,1.25,1.5,1.75,2);


alarm[0]=50;

vida=200;









