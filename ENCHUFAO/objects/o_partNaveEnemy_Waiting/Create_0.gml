


global.naveEnemy_Waiting_sys = part_system_create();

part_system_depth(global.naveEnemy_Waiting_sys,layer_get_depth("Part"));	


//Particle
global.naveEnemy_Waiting = part_type_create();
part_type_scale(global.naveEnemy_Waiting,1,1);
part_type_orientation(global.naveEnemy_Waiting,0,359,0,0,0)
part_type_size(global.naveEnemy_Waiting, 1,1.5,-0.055,0);
part_type_alpha2(global.naveEnemy_Waiting, 1,1);
part_type_speed(global.naveEnemy_Waiting,0,0,0,0);
part_type_direction(global.naveEnemy_Waiting,0,359,0,1);
part_type_life(global.naveEnemy_Waiting, 20,35);
part_type_sprite(global.naveEnemy_Waiting,s_naveEnemy_part,true,1,false)





//Particle Emitter
misil_emit = part_emitter_create(global.naveEnemy_Waiting_sys);
part_emitter_region(global.naveEnemy_Waiting_sys, misil_emit, x-40,x+40,y-40,y+40, ps_shape_diamond,ps_distr_gaussian);
part_emitter_stream(global.naveEnemy_Waiting_sys, misil_emit,global.naveEnemy_Waiting,1)


