/// @description Insert description here
// You can write your code in this editor
image_speed = 0;
event_inherited();
_hpush = 0;
_vpush = 0;
scale = 1;
bnc = 0.8;

hsp_f = 0;
vsp_f = 0;
_angle = image_angle;
image_index = 0;
exploding = false;
contExplo = 70;
alarm[0] = 10;
_hp = 6;
hitByLaser = false;
flashAlpha = 0;
offset = irandom(360);

touched = false;

enemyShooter = s_bossMechaActive;
shooterTrail = false;