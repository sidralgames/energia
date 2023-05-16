


global.naveP_sys = part_system_create();

part_system_depth(global.naveP_sys,layer_get_depth("Part"));	


//Particle
global.naveP = part_type_create();
part_type_scale(global.naveP,1,1);
part_type_orientation(global.naveP,140,160,0,0,0)
part_type_size(global.naveP, 1,1.5,-0.075,0);
part_type_alpha2(global.naveP, 1,1);
part_type_speed(global.naveP,0,0,0,0);
part_type_direction(global.naveP,140,160,0,1);
part_type_life(global.naveP, 15,20);






//Particle Emitter
misil_emit = part_emitter_create(global.naveP_sys);
part_emitter_region(global.naveP_sys, misil_emit, x-40,x+40,y-40,y+40, ps_shape_diamond,ps_distr_gaussian);
part_emitter_stream(global.naveP_sys, misil_emit,global.naveP,1)


