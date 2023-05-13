/// @description Insert description here
// You can write your code in this editor


part_particles_create(global.naveP_sys, x, y, global.naveP , 5)

var a = point_direction(x, y, xcenter, ycenter);
direction += sign(dsin(a - direction)) * precision;
_angle = direction;

	


