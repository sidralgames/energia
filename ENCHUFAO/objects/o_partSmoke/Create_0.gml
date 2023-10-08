


global.partSmoke_sys = part_system_create();

part_system_depth(global.partSmoke_sys,layer_get_depth("Part"));	


//Particle
global.partSmoke = part_type_create();
part_type_scale(global.partSmoke,1,1);
part_type_orientation(global.partSmoke,0,0,0,0,0)
part_type_size(global.partSmoke, 0.25,0.75,-0.005,0);
part_type_alpha2(global.partSmoke, 1,1);
part_type_sprite(global.partSmoke,s_partSmoke,true,true,false)
part_type_speed(global.partSmoke,0,0,0,0);
part_type_direction(global.partSmoke,0,0,0,1);
part_type_life(global.partSmoke, 20,30);






//Particle Emitter
misil_emit = part_emitter_create(global.partSmoke_sys);
part_emitter_region(global.partSmoke_sys, misil_emit, x-40,x+40,y-40,y+40, ps_shape_diamond,ps_distr_gaussian);
part_emitter_stream(global.partSmoke_sys, misil_emit,global.partSmoke,1)


