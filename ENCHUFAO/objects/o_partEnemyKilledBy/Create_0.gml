


global.EnemyKilledBy_sys = part_system_create();

part_system_depth(global.EnemyKilledBy_sys,layer_get_depth("Pause"));	


//Particle
global.EnemyKilledBy_part = part_type_create();
part_type_scale(global.EnemyKilledBy_part,1,1);
part_type_orientation(global.EnemyKilledBy_part,0,359,0,0,0)
part_type_size(global.EnemyKilledBy_part, 1,1.5,-0.055,0);
part_type_alpha2(global.EnemyKilledBy_part, 1,1);
part_type_speed(global.EnemyKilledBy_part,1,1.5,0,0);
part_type_direction(global.EnemyKilledBy_part,175,185,0,1);
part_type_life(global.EnemyKilledBy_part, 20,35);
part_type_sprite(global.EnemyKilledBy_part,s_naveEnemy_part,true,1,false)





//Particle Emitter
misil_emit = part_emitter_create(global.EnemyKilledBy_sys);
part_emitter_region(global.EnemyKilledBy_sys, misil_emit, x-40,x+40,y-40,y+40, ps_shape_diamond,ps_distr_gaussian);
part_emitter_stream(global.EnemyKilledBy_sys, misil_emit,global.EnemyKilledBy_part,1)


