
alpha=1;
global.overCharged_sys = part_system_create();
part_system_depth(global.overCharged_sys,layer_get_depth("Player"));

//Particle
global.overChargedPart = part_type_create();
part_type_scale(global.overChargedPart,1,1);
part_type_orientation(global.overChargedPart,0,359,0,0,0)
part_type_size(global.overChargedPart, 0.25,0.75,-0.05,0);
part_type_alpha2(global.overChargedPart, 1,1);
part_type_speed(global.overChargedPart,0,0,0,0);
part_type_direction(global.overChargedPart,140,160,0,1);
part_type_life(global.overChargedPart, 20,30);
part_type_sprite(global.overChargedPart,s_overchargedPart,true,false,true)
part_type_blend(global.overChargedPart,true)




//Particle Emitter
misilA_emit = part_emitter_create(global.overCharged_sys);
part_emitter_region(global.overCharged_sys, misilA_emit, x-40,x+40,y-40,y+40, ps_shape_diamond,ps_distr_gaussian);
part_emitter_stream(global.overCharged_sys, misilA_emit,global.overChargedPart,1)


