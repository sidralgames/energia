


global.balaPTorretaBig_sys = part_system_create();

part_system_depth(global.balaPTorretaBig_sys,layer_get_depth("Part"));	


//Particle
global.balaPTorretaBig = part_type_create();
part_type_scale(global.balaPTorretaBig,1,1);
part_type_orientation(global.balaPTorretaBig,140,160,0,0,0)
part_type_size(global.balaPTorretaBig, 1.5,1.95,-0.075,0);
part_type_alpha2(global.balaPTorretaBig, 1,1);
part_type_speed(global.balaPTorretaBig,0,0,0,0);
part_type_direction(global.balaPTorretaBig,140,160,0,1);
part_type_life(global.balaPTorretaBig, 20,25);
part_type_sprite(global.balaPTorretaBig,s_bullet_partTorretaBig,true,1,false)





//Particle Emitter
misil_emit = part_emitter_create(global.balaPTorretaBig_sys);
part_emitter_region(global.balaPTorretaBig_sys, misil_emit, x-40,x+40,y-40,y+40, ps_shape_diamond,ps_distr_gaussian);
part_emitter_stream(global.balaPTorretaBig_sys, misil_emit,global.balaPTorreta,1)


