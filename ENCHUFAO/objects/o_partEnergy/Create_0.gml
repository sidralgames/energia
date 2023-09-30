
alpha=1;
global.energyPart_sys = part_system_create();
part_system_depth(global.energyPart_sys,-9);

//Particle
global.energyPart = part_type_create();
part_type_scale(global.energyPart,1,1);
part_type_orientation(global.energyPart,0,0,0,0,0)
part_type_size(global.energyPart, 0.25,0.65,-0.005,0);
part_type_alpha2(global.energyPart, 1,0.6);
part_type_speed(global.energyPart,0.5,1,0,0);
part_type_direction(global.energyPart,90,90,0,1);
part_type_life(global.energyPart, 20,25);
part_type_sprite(global.energyPart,s_overchargedPart,true,false,true)
part_type_blend(global.energyPart,true)




//Particle Emitter
misilA_emit = part_emitter_create(global.energyPart_sys);
part_emitter_region(global.energyPart_sys, misilA_emit, x-40,x+40,y-40,y+40, ps_shape_diamond,ps_distr_gaussian);
part_emitter_stream(global.energyPart_sys, misilA_emit,global.energyPart,1)


