


global.naveEnemy_Mini_sys = part_system_create();

part_system_depth(global.naveEnemy_Mini_sys,layer_get_depth("Part"));	


//Particle
global.naveEnemy_Mini = part_type_create();
part_type_scale(global.naveEnemy_Mini,1,1);
part_type_orientation(global.naveEnemy_Mini,0,359,0,0,0)
part_type_size(global.naveEnemy_Mini, 0.5,1,-0.055,0);
part_type_alpha2(global.naveEnemy_Mini, 1,1);
part_type_speed(global.naveEnemy_Mini,0,0,0,0);
part_type_direction(global.naveEnemy_Mini,0,359,0,1);
part_type_life(global.naveEnemy_Mini, 10,15)
part_type_sprite(global.naveEnemy_Mini,s_bullet_part_Red,true,1,false)





//Particle Emitter
misil_emit = part_emitter_create(global.naveEnemy_Mini_sys);
part_emitter_region(global.naveEnemy_Mini_sys, misil_emit, x-40,x+40,y-40,y+40, ps_shape_diamond,ps_distr_gaussian);
part_emitter_stream(global.naveEnemy_Mini_sys, misil_emit,global.naveEnemy_Mini,1)


