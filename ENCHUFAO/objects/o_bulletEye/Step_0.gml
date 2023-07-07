/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
//

part_particles_create(global.balaPTorretaBig_sys, x, y, global.balaPTorretaBig , 1)


MoveZeroGrv()
image_angle += _hpush*2;

hp--;

if (hp <= 0)
{
	instance_destroy()
}