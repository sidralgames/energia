/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

part_particles_create(global.balaPTorreta_sys, x, y, global.balaPTorreta , 1)


hp--;

if (hp <= 0)
{
	instance_destroy()
}