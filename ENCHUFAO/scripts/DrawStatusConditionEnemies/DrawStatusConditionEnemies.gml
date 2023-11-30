// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function DrawStatusConditionEnemies(argument0) // image_angle
{
	if (flashAlpha>0)
	{
		shader_set(shFlash)
		draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,argument0,c_white,flashAlpha)
		shader_reset()
	}

	if (burned)
	{
		draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,argument0,global.brightRed,0.5)
	}

	if (electrocutated)
	{
		draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,argument0,global.yellow,0.62)
	}

	if (burnFlash>0)
	{
		shader_set(shFlash)
		draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,argument0,global.brightRed,burnFlash)
		shader_reset()
	}

	if (electroFlash>0)
	{
		shader_set(shFlash)
		draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,argument0,global.yellow,electroFlash)
		shader_reset()
	}
}