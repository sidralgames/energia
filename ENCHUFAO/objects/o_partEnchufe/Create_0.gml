
alpha=1;
global.enchufe_sys = part_system_create();
part_system_depth(global.enchufe_sys,-9);

//Particle
global.enchufePart = part_type_create();
part_type_scale(global.enchufePart,1,1);
part_type_orientation(global.enchufePart,140,160,0,0,0)
part_type_size(global.enchufePart, 0.25,0.75,-0.05,0);
part_type_alpha2(global.enchufePart, 1,1);
part_type_speed(global.enchufePart,0,0,0,0);
part_type_direction(global.enchufePart,140,160,0,1);
part_type_life(global.enchufePart, 20,30);
part_type_sprite(global.enchufePart,s_bullet_part,true,1,false)
part_type_blend(global.enchufePart,true)




//Particle Emitter
misilA_emit = part_emitter_create(global.enchufe_sys);
part_emitter_region(global.enchufe_sys, misilA_emit, x-40,x+40,y-40,y+40, ps_shape_diamond,ps_distr_gaussian);
part_emitter_stream(global.enchufe_sys, misilA_emit,global.enchufePart,1)


