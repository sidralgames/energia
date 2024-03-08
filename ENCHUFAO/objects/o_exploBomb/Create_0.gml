/// @description Insert description here
// You can write your code in this editor
isFrom = "PlayerBomb";
inScreen =  (x > __view_get( e__VW.XView, 0 )-50 && x < __view_get( e__VW.XView, 0 )+710) &&
(y > __view_get( e__VW.YView, 0 )-50 && y < __view_get( e__VW.YView, 0 )+410)

sounded = false;

drawflash = true
alarm[0] = 1
scale=0;
damagePlayer = false;
scaleShockwave = scale;
scaleShake = scale
image_xscale = scale;
image_yscale = scale;