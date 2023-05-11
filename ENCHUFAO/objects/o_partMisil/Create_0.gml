


global.misil_sys = part_system_create();

part_system_depth(global.misil_sys,201);	


//Particle
global.misil = part_type_create();
part_type_scale(global.misil,1,1);
part_type_orientation(global.misil,0,359,0,0,0)
part_type_size(global.misil, 1,1.75,-0.05,0);
part_type_alpha2(global.misil, 1,0);
part_type_speed(global.misil,0,0,0,0);
part_type_direction(global.misil,140,160,0,1);
part_type_life(global.misil, 30,35);
part_type_sprite(global.misil,s_naveEnemy_part,true,1,false)





//Particle Emitter
misil_emit = part_emitter_create(global.misil_sys);
part_emitter_region(global.misil_sys, misil_emit, x-40,x+40,y-40,y+40, ps_shape_diamond,ps_distr_gaussian);
part_emitter_stream(global.misil_sys, misil_emit,global.misil,1)


