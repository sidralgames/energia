


global.partSmokeBomb_Back_sys = part_system_create();

part_system_depth(global.partSmokeBomb_Back_sys,layer_get_depth("Part"));	


//Particle
global.partSmokeBomb_Back = part_type_create();
part_type_scale(global.partSmokeBomb_Back,1,1);
part_type_orientation(global.partSmokeBomb_Back,0,0,0,0,0)
part_type_size(global.partSmokeBomb_Back, 0.85,1.35,-0.005,0);
part_type_alpha2(global.partSmokeBomb_Back, 0.7,0.2);
part_type_sprite(global.partSmokeBomb_Back,s_partSmokeBomb,true,true,false)
part_type_speed(global.partSmokeBomb_Back,0,0,0,0);
part_type_direction(global.partSmokeBomb_Back,0,0,0,1);
part_type_life(global.partSmokeBomb_Back, 25,35);






//Particle Emitter
misil_emit = part_emitter_create(global.partSmokeBomb_Back_sys);
part_emitter_region(global.partSmokeBomb_Back_sys, misil_emit, x-40,x+40,y-40,y+40, ps_shape_diamond,ps_distr_gaussian);
part_emitter_stream(global.partSmokeBomb_Back_sys, misil_emit,global.partSmokeBomb_Back,1)


