/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

part_particles_create(global.balaPTorretaBig_sys, x, y, global.balaPTorretaBig , 2)

x+=_hpush * global.relativeSpeed;
y+=_vpush * global.relativeSpeed;


hp--;

if (hp <= 0)
{
	instance_destroy()
}