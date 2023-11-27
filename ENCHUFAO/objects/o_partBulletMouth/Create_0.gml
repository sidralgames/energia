


global.balaMouth_sys = part_system_create();

part_system_depth(global.balaMouth_sys,layer_get_depth("EnemiesHUE"));	


//Particle
global.balaMouth = part_type_create();
part_type_scale(global.balaMouth,1,1);
part_type_orientation(global.balaMouth,0,359,0,0,0)
part_type_size(global.balaMouth, 1.5,1.75,-0.075,0);
part_type_alpha2(global.balaMouth, 1,1);
part_type_speed(global.balaMouth,0,0,0,0);
part_type_direction(global.balaMouth,0,359,0,1);
part_type_life(global.balaMouth, 12,15);
part_type_sprite(global.balaMouth,s_bullet_partMouth, true,1,false)





//Particle Emitter
misil_emit = part_emitter_create(global.balaMouth_sys);
part_emitter_region(global.balaMouth_sys, misil_emit, x-40,x+40,y-40,y+40, ps_shape_diamond,ps_distr_gaussian);
part_emitter_stream(global.balaMouth_sys, misil_emit,global.balaMouth,1)


