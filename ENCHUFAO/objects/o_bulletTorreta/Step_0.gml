/// @description Insert description here
// You can write your code in this editor
// Inherit the parent event
if (createdFromEnemy = false)
{
	speed = 2.5 * min(1,global.relativeSpeed+0.2);
}
else
{
	speed = 1.5 * min(1,global.relativeSpeed+0.2);
}

if tile_meeting(x,y,"Tiles")
{
	instance_destroy()	
}

part_particles_create(global.balaPTorreta_sys, x, y, global.balaPTorreta , 1)
image_angle = direction-90;

hp--;

if (hp <= 0)
{
	instance_destroy()
}


