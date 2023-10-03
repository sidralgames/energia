/// @description Insert description here
// You can write your code in this editor
// Inherit the parent event
speed=1.75 * global.relativeSpeed;

if tile_meeting(x,y,"Tiles")
{
	instance_destroy()	
}

part_particles_create(global.balaGarbanzo_sys, x, y, global.balaGarbanzo , 1)
image_angle = direction-90;

hp--;

if (hp <= 0)
{
	instance_destroy()
}

if alarm[0]<=0
{
	dire = dire*-1
	alarm[0] = 40;
}
direction+=6*dire;

