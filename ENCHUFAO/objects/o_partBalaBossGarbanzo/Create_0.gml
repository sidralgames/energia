


global.balaGarbanzo_sys = part_system_create();

part_system_depth(global.balaGarbanzo_sys,layer_get_depth("Part"));	


//Particle
global.balaGarbanzo = part_type_create();
part_type_scale(global.balaGarbanzo,1,1);
part_type_orientation(global.balaGarbanzo,0,359,0,0,0)
part_type_size(global.balaGarbanzo, 1,2,-0.075,0);
part_type_alpha2(global.balaGarbanzo, 1,1);
part_type_speed(global.balaGarbanzo,0,0,0,0);
part_type_direction(global.balaGarbanzo,0,359,0,1);
part_type_life(global.balaGarbanzo, 10,25);
part_type_sprite(global.balaGarbanzo,s_bullet_partTorretaBig, true,1,false)





//Particle Emitter
misil_emit = part_emitter_create(global.balaGarbanzo_sys);
part_emitter_region(global.balaGarbanzo_sys, misil_emit, x-40,x+40,y-40,y+40, ps_shape_diamond,ps_distr_gaussian);
part_emitter_stream(global.balaGarbanzo_sys, misil_emit,global.balaGarbanzo,1)


