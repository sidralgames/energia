


global.balaPTorreta_sys = part_system_create();

part_system_depth(global.balaPTorreta_sys,201);	


//Particle
global.balaPTorreta = part_type_create();
part_type_scale(global.balaPTorreta,1,1);
part_type_orientation(global.balaPTorreta,140,160,0,0,0)
part_type_size(global.balaPTorreta, 1,1.75,-0.075,0);
part_type_alpha2(global.balaPTorreta, 1,1);
part_type_speed(global.balaPTorreta,0,0,0,0);
part_type_direction(global.balaPTorreta,140,160,0,1);
part_type_life(global.balaPTorreta, 10,15);
part_type_sprite(global.balaPTorreta,s_bullet_partTorreta,true,1,false)





//Particle Emitter
misil_emit = part_emitter_create(global.balaPTorreta_sys);
part_emitter_region(global.balaPTorreta_sys, misil_emit, x-40,x+40,y-40,y+40, ps_shape_diamond,ps_distr_gaussian);
part_emitter_stream(global.balaPTorreta_sys, misil_emit,global.balaPTorreta,1)


