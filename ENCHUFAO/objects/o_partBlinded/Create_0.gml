
alpha=1;
global.blinded_sys = part_system_create();
part_system_depth(global.blinded_sys,layer_get_depth("Player"));

//Particle
global.blindedPart = part_type_create();
part_type_scale(global.blindedPart,1,1);
part_type_orientation(global.blindedPart,0,359,0,0,0)
part_type_size(global.blindedPart, 0.45,0.95,-0.05,0);
part_type_alpha2(global.blindedPart, 1,1);
part_type_speed(global.blindedPart,0,0,0,0);
part_type_direction(global.blindedPart,140,160,0,1);
part_type_life(global.blindedPart, 20,30);
part_type_sprite(global.blindedPart,s_blindedPart,true,false,false)
//part_type_blend(global.blindedPart,true)




//Particle Emitter
misilA_emit = part_emitter_create(global.blinded_sys);
part_emitter_region(global.blinded_sys, misilA_emit, x-40,x+40,y-40,y+40, ps_shape_diamond,ps_distr_gaussian);
part_emitter_stream(global.blinded_sys, misilA_emit,global.blindedPart,1)


