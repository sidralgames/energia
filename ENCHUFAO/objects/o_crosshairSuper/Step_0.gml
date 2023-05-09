/// @description Insert description here
// You can write your code in this editor

if image_index >=12 
{
	image_speed = 0;	
}

enemy = instance_nearest(x,y, o_enemy)

if !instance_exists(o_enemy)
{
	instance_destroy();
}


