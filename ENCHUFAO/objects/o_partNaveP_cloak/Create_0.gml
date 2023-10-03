


global.naveP_cloak_sys = part_system_create();

part_system_depth(global.naveP_cloak_sys,layer_get_depth("Part"));	


//Particle
global.naveP_cloak = part_type_create();
part_type_scale(global.naveP_cloak,1,1);
part_type_orientation(global.naveP_cloak,140,160,0,0,0)
part_type_size(global.naveP_cloak, 1,1.5,-0.075,0);
part_type_alpha2(global.naveP_cloak, 0.0,0.2);
part_type_speed(global.naveP_cloak,0,0,0,0);
part_type_direction(global.naveP_cloak,140,160,0,1);
part_type_life(global.naveP_cloak, 15,20);






//Particle Emitter
misil_emit = part_emitter_create(global.naveP_cloak_sys);
part_emitter_region(global.naveP_cloak_sys, misil_emit, x-40,x+40,y-40,y+40, ps_shape_diamond,ps_distr_gaussian);
part_emitter_stream(global.naveP_cloak_sys, misil_emit,global.naveP_cloak,1)


