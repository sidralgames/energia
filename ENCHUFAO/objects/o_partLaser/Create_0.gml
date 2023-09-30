
alpha=1;
global.laserPart_sys = part_system_create();
part_system_depth(global.laserPart_sys,-9);

//Particle
global.laserPart = part_type_create();
part_type_scale(global.laserPart,1,1);
part_type_orientation(global.laserPart,0,0,0,0,0)
part_type_size(global.laserPart, 0.25,0.85,-0.0005,0);
part_type_alpha2(global.laserPart, 1,0.6);
part_type_speed(global.laserPart,0.5,1,0,0);
part_type_direction(global.laserPart,90,90,0,1);
part_type_life(global.laserPart, 10,15);
part_type_sprite(global.laserPart,s_overchargedPartLaser,true,1,false)
part_type_blend(global.laserPart,true)




//Particle Emitter
misilA_emit = part_emitter_create(global.laserPart_sys);
part_emitter_region(global.laserPart_sys, misilA_emit, x-40,x+40,y-40,y+40, ps_shape_diamond,ps_distr_gaussian);
part_emitter_stream(global.laserPart_sys, misilA_emit,global.laserPart,1)


