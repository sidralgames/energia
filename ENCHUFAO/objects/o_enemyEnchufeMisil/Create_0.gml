/// @description Insert description here
// You can write your code in this editor
slowMoPickUps = 5;
cable = noone;
isCounted=false;
waiting = false;
enchufe = instance_nearest(x,y,o_enchufe_Father)
version2 = false;
state = ENEMYSTATE.PLUGGED;
cable =-1;
hsp_final = 0
hsp_f = 0
vsp_final = 0
vsp_f = 0
crosshairSuper = false
cross = -1;
_hpush = 0;
_vpush = 0;
hsp_f =0;
vsp_f =0;
bnc = 1
shocked = false;
canPlug = 0;
_angle = image_angle;
max_hp = 20;
_hp = max_hp;
cont = 500;
image_speed = 0.5;
precision= choose(3.75,3);

_speedMin = 1;
_speedMax = 1.5;

tocado = false;


direction_ =direction;


//tentacles.offs = 10
//tentacles2 = instance_create_layer(x,y+5,"Tentacles",oVine)
//tentacles2.offs =-10

alarm[1] = 0;
_speed=0;
off = 90;
len = 0;
sprite_plugged = s_enemyEnchufePlugged;

