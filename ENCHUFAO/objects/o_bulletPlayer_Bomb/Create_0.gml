/// @description Insert description here
// You can write your code in this editor

image_speed = 0.5;
_hpush = 0;
_vpush = 0;
scale = 1;
bnc = 0.5;
minVel = 0.1;
hsp_f = 0;
vsp_f = 0;
scaleEnd = 1;
called = false;

alarm[0] = 10;
alarm[1] = 30;
hitByLaser = false;
_angle = direction;

set = false

_hpHoming = 180;
inScreen =  (x > __view_get( e__VW.XView, 0 )-350 && x < __view_get( e__VW.XView, 0 )+1010) &&
(y > __view_get( e__VW.YView, 0 )-350 && y < __view_get( e__VW.YView, 0 )+710)


