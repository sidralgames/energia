/// @description Insert description here
// You can write your code in this editor

if (global.bombIsClusterBomb)
{
	sprite_index = s_bombCluster;	
}

image_speed = 0.5;

t = 6;
increment = choose(1,2,3); //degrees -- freq = 1 oscillation per second (1Hz)
amplitude = choose(1,2);

dir1 = choose(90,270)

//clone the x- and y-positions
xx = x;
yy = y;


