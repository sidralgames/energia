


global.partSmokeBomb_sys = part_system_create();

part_system_depth(global.partSmokeBomb_sys,layer_get_depth("ShieldEnemy"));	


//Particle
global.partSmokeBomb = part_type_create();
part_type_scale(global.partSmokeBomb,1,1);
part_type_orientation(global.partSmokeBomb,0,0,0,0,0)
part_type_size(global.partSmokeBomb, 0.85,1.35,-0.005,0);
part_type_alpha2(global.partSmokeBomb, 0.8,0.5);
part_type_sprite(global.partSmokeBomb,s_partSmokeBomb,true,true,false)
part_type_speed(global.partSmokeBomb,0,0,0,0);
part_type_direction(global.partSmokeBomb,0,0,0,1);
part_type_life(global.partSmokeBomb, 25,35);






//Particle Emitter
misil_emit = part_emitter_create(global.partSmokeBomb_sys);
part_emitter_region(global.partSmokeBomb_sys, misil_emit, x-40,x+40,y-40,y+40, ps_shape_diamond,ps_distr_gaussian);
part_emitter_stream(global.partSmokeBomb_sys, misil_emit,global.partSmokeBomb,1)


