


global.naveEnemy1_sys = part_system_create();

part_system_depth(global.naveEnemy1_sys,layer_get_depth("Part"));	


//Particle
global.naveEnemy1 = part_type_create();
part_type_scale(global.naveEnemy1,1,1);
part_type_orientation(global.naveEnemy1,140,160,0,0,0)
part_type_size(global.naveEnemy1, 1,1.5,-0.075,0);
part_type_alpha2(global.naveEnemy1, 1,1);
part_type_speed(global.naveEnemy1,0,0,0,0);
part_type_direction(global.naveEnemy1,140,160,0,1);
part_type_life(global.naveEnemy1, 10,15);
part_type_sprite(global.naveEnemy1,s_naveEnemy_part,true,1,false)





//Particle Emitter
misil_emit = part_emitter_create(global.naveEnemy1_sys);
part_emitter_region(global.naveEnemy1_sys, misil_emit, x-40,x+40,y-40,y+40, ps_shape_diamond,ps_distr_gaussian);
part_emitter_stream(global.naveEnemy1_sys, misil_emit,global.naveEnemy1,1)


