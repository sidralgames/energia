/// @description Inserte aquí la descripción
// Puede escribir su código en este editor





// Inherit the parent event
event_inherited();

draw_sprite_ext(sprite_index,0,x,y,1,1,_angle,image_blend,1)

draw_sprite_ext(s_enemyDiscEye,image_index,x,y,image_xscale,image_yscale,0,image_blend,image_alpha);

if flashAlpha>0
{
	shader_set(shFlash)
	draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,_angle,c_white,flashAlpha)
	shader_reset()
}

if (burned)
{
	draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,_angle,rojoosc,0.5)
}

if (electrocutated)
{
	draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,_angle,c_yellow,0.62)
}

if (burnFlash>0)
{
	shader_set(shFlash)
	draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,_angle,rojoosc,burnFlash)
	shader_reset()
}

if (electroFlash>0)
{
	shader_set(shFlash)
	draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,_angle,c_yellow,electroFlash)
	shader_reset()
}

if (state = 2)
{
	//draw_sprite_ext(sprite_index,0,x-hspeed*4,y-vspeed*4,1,1,_angle,image_blend,0.25)
	draw_sprite_ext(sprite_index,0,x-hspeed,y-vspeed,1,1,_angle,image_blend,0.5)
}

