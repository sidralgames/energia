
alpha=1;
global.repairingPart_sys = part_system_create();
part_system_depth(global.repairingPart_sys,-9);

//Particle
global.repairingPart = part_type_create();
part_type_scale(global.repairingPart,1,1);
part_type_orientation(global.repairingPart,0,0,0,0,0)
part_type_size(global.repairingPart, 0.25,0.85,-0.005,0);
part_type_alpha2(global.repairingPart, 1,0.6);
part_type_speed(global.repairingPart,0.5,1,0,0);
part_type_direction(global.repairingPart,90,90,0,1);
part_type_life(global.repairingPart, 15,25);
part_type_sprite(global.repairingPart,s_repairingPart,true,1,false)
part_type_blend(global.repairingPart,true)




//Particle Emitter
misilA_emit = part_emitter_create(global.repairingPart_sys);
part_emitter_region(global.repairingPart_sys, misilA_emit, x-40,x+40,y-40,y+40, ps_shape_diamond,ps_distr_gaussian);
part_emitter_stream(global.repairingPart_sys, misilA_emit,global.repairingPart,1)


