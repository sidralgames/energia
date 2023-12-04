/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

if (_hp <=0)
{
	draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,_angle,c_gray,image_alpha);
}
else
{
	draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,_angle,image_blend,image_alpha)
}
if flashAlpha>0
{
	shader_set(shFlash)
	draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,_angle,c_white,flashAlpha)
	shader_reset()
}

if instance_exists(Metal)
{
	if (Metal.isVisible = false)
	{
		if (burned)
		{
			draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,_angle,global.brightRed,0.5)
		}

		if (electrocutated)
		{
			draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,_angle,global.yellow,0.62)
		}

		if (burnFlash>0)
		{
			shader_set(shFlash)
			draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,_angle,global.brightRed,burnFlash)
			shader_reset()
		}

		if (electroFlash>0)
		{
			shader_set(shFlash)
			draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,_angle,global.yellow,electroFlash)
			shader_reset()
		}
	}
}

draw_text(x,y,string(_hp))