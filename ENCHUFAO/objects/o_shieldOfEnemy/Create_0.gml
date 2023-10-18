/// @description Insert description here
// You can write your code in this editor

event_inherited();
scale = 1;
depth = layer_get_depth("Enemies")-1;
isShield = true;
canBounce = false;
image_speed = 0.5;
image_alpha = 0.5;
_hp = 10;
enemy = collision_circle(x, y, 2, o_enemyP, false, true)




