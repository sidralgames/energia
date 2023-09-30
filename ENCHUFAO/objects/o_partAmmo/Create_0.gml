
alpha=1;
global.ammoPart_sys = part_system_create();
part_system_depth(global.ammoPart_sys,-9);

//Particle
global.ammoPart = part_type_create();
part_type_scale(global.ammoPart,1,1);
part_type_orientation(global.ammoPart,0,0,0,0,0)
part_type_size(global.ammoPart, 0.45,0.85,-0.005,0);
part_type_alpha2(global.ammoPart, 1,0.6);
part_type_speed(global.ammoPart,0.5,1,0,0);
part_type_direction(global.ammoPart,90,90,0,1);
part_type_life(global.ammoPart, 10,15);
part_type_sprite(global.ammoPart,s_ammoPart,true,1,false)
part_type_blend(global.ammoPart,true)




//Particle Emitter
misilA_emit = part_emitter_create(global.ammoPart_sys);
part_emitter_region(global.ammoPart_sys, misilA_emit, x-40,x+40,y-40,y+40, ps_shape_diamond,ps_distr_gaussian);
part_emitter_stream(global.ammoPart_sys, misilA_emit,global.ammoPart,1)


