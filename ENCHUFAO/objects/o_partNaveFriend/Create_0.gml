


global.naveFriend_sys = part_system_create();

part_system_depth(global.naveFriend_sys,layer_get_depth("Part"));	


//Particle
global.naveFriend = part_type_create();
part_type_scale(global.naveFriend,1,1);
part_type_orientation(global.naveFriend,140,160,0,0,0)
part_type_size(global.naveFriend, 0.75,1.25,-0.075,0);
part_type_alpha2(global.naveFriend, 1,1);
part_type_sprite(global.naveFriend,s_bullet_part_Blue,true,1,false)
part_type_speed(global.naveFriend,0,0,0,0);
part_type_direction(global.naveFriend,140,160,0,1);
part_type_life(global.naveFriend, 7,11);






//Particle Emitter
misil_emit = part_emitter_create(global.naveFriend_sys);
part_emitter_region(global.naveFriend_sys, misil_emit, x-40,x+40,y-40,y+40, ps_shape_diamond,ps_distr_gaussian);
part_emitter_stream(global.naveFriend_sys, misil_emit,global.naveFriend,1)


