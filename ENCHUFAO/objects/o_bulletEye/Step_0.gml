/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

//part_particles_create(global.balaPTorreta_sys, x, y, global.balaPTorreta , 2)

x+=_hpush;
y+=_vpush;

image_angle += _hpush*2;

hp--;

if (hp <= 0)
{
	instance_destroy()
}