


global.balaP_sys = part_system_create();

part_system_depth(global.balaP_sys,201);	


//Particle
global.balaP = part_type_create();
part_type_scale(global.balaP,1,1);
part_type_orientation(global.balaP,140,160,0,0,0)
part_type_size(global.balaP, 1,1.75,-0.075,0);
part_type_alpha2(global.balaP, 1,1);
part_type_speed(global.balaP,0,0,0,0);
part_type_direction(global.balaP,140,160,0,1);
part_type_life(global.balaP, 10,15);
part_type_sprite(global.balaP,s_bullet_part,true,1,false)





//Particle Emitter
misil_emit = part_emitter_create(global.balaP_sys);
part_emitter_region(global.balaP_sys, misil_emit, x-40,x+40,y-40,y+40, ps_shape_diamond,ps_distr_gaussian);
part_emitter_stream(global.balaP_sys, misil_emit,global.balaP,1)


