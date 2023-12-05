/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
gray = make_color_rgb(58,68,102);

if (instance_exists(MyHitBox))
{
	if (MyHitBox._hp <=0)
	{
		draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,gray,image_alpha);
	}
	else
	{
		draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha)
	}
}


if (instance_exists(MyMetal) && instance_exists(MyHitBox))
{
	if (MyMetal.isVisible = false) && (MyHitBox._hp > 0)
	{
		if (flashAlpha>0)
		{
			shader_set(shFlash)
			draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,c_white,flashAlpha)
			shader_reset()
		}
		if (burned)
		{
			draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,global.brightRed,0.5)
		}

		if (electrocutated)
		{
			draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,global.yellow,0.62)
		}

		if (burnFlash>0)
		{
			shader_set(shFlash)
			draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,global.brightRed,burnFlash)
			shader_reset()
		}

		if (electroFlash>0)
		{
			shader_set(shFlash)
			draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,global.yellow,electroFlash)
			shader_reset()
		}
	}
}

if instance_exists(o_playerShip)
{
	if  (charging) && (o_playerShip.pluggedTimer < 200)
	{
		if (charge <= 200)
		{
			charge+=1;
		}
		
		draw_sprite_ext(s_enchufeChargeHP_Out,0,x-42,y-30,1,1,0,image_blend, image_alpha)
		draw_sprite_ext(s_enchufeChargeHP_In,0,x-42,y-30,(charge/maxCharge),1,0,image_blend, image_alpha)
	}
}

//draw_text(x,y-30, string(Metal1))
//draw_text(x,y+30, string(Metal2))