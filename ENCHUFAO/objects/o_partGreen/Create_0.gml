


global.balaGreen_sys = part_system_create();

part_system_depth(global.balaGreen_sys,layer_get_depth("Part"));	


//Particle
global.balaGreen = part_type_create();
part_type_scale(global.balaGreen,1,1);
part_type_orientation(global.balaGreen,0,359,0,0,0)
part_type_size(global.balaGreen, 1,2,-0.025,0);
part_type_alpha2(global.balaGreen, 1,1);
part_type_speed(global.balaGreen,0,0,0,0);
part_type_direction(global.balaGreen,0,359,0,1);
part_type_life(global.balaGreen, 10,25);
part_type_sprite(global.balaGreen,s_bullet_part_Green2, true,1,false)





//Particle Emitter
misil_emit = part_emitter_create(global.balaGreen_sys);
part_emitter_region(global.balaGreen_sys, misil_emit, x-40,x+40,y-40,y+40, ps_shape_diamond,ps_distr_gaussian);
part_emitter_stream(global.balaGreen_sys, misil_emit,global.balaGreen,1)


