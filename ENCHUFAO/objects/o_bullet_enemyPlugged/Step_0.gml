/// @description Insert description here
// You can write your code in this editor
// Inherit the parent event
if tile_meeting(x,y,"Tiles")
{
	instance_destroy()	
}

part_particles_create(global.naveP_sys, x, y, global.naveP , 5)
image_angle = direction-90;

hp--;

if (hp <= 0)
{
	instance_destroy()
}

direction+=direBullet * 1;
