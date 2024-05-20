/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();


speed=1.5* global.relativeSpeed;;

part_particles_create(global.balaPTorretaBig_sys, x, y, global.balaPTorretaBig , 1)




hp--;

if (hp <= 0)
{
	instance_destroy()
}