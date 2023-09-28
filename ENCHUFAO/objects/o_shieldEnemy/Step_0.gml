/// @description Insert description here
// You can write your code in this editor

image_alpha = irandom(0.5)+0.8

if (_hp <= 0) || !instance_exists(enemyBelongs)
{
	instance_destroy();
}

if (image_index >=30)
{
	image_index = 10;
}


