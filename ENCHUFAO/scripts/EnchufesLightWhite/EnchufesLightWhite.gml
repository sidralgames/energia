// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function EnchufesLightWhite()
{
	//----- ENCHUFES ------//
	with(o_enchufeStandard_Father)
	{
		if (enchufeActive) && (soundActive = false)
		{
			if (lightRange < 1.5)
			{
				lightRange += 0.008;
			}
		
			off = random_range(0.05, -0.05);
			draw_sprite_ext(s_lightBulb4, 0, x, y, lightRange, lightRange, 0, c_white, 0.65+off);
		}
	
		if (soundActive = true)
		{
			off = random_range(0.05, -0.05);

			//gpu_set_blendmode(bm_normal)
			draw_sprite_ext(s_lightBulb4, 0, x, y, 1.75+off, 1.75+off, 0, c_white, 0.85+off);
		}
	}

	with(o_enchufeBombs)
	{
		off = random_range(0.05, -0.05);
	
		if (enchufeActive)
		{
			draw_sprite_ext(s_lightBulb4, 0, x, y, 1+off, 1+off, 0, c_white, 0.65+off);
		}
		else
		{
			draw_sprite_ext(s_lightBulb4, 0, x, y, 0.75+off, 0.75+off, 0, c_white, 0.5+off);
		}
	}

	with(o_enchufePETA_Father)
	{
		off = random_range(0.05, -0.05);
	
		if (enchufeActive)
		{
			draw_sprite_ext(s_lightBulb4, 0, x, y, 1+off, 1+off, 0, c_white, 0.65+off);
		}
		else
		{
			draw_sprite_ext(s_lightBulb4, 0, x, y, 0.75+off, 0.75+off, 0, c_white, 0.5+off);
		}
	}

	with(o_enchufe_Final)
	{
		if (abierto)
		{
			off = random_range(0.05, -0.05);
			draw_sprite_ext(s_lightBulb4, 0, x, y, 2, 2, 0, c_white, 0.65+off);
		}
	}
	
	
	//----- CAPSULES ----//
	with(o_capsule)
	{
		off = random_range(0.02, -0.02);
	
		if (enchufeActive)
		{
			draw_sprite_ext(s_lightBulb4, 0, x, y, 1+off, 1+off, 0, c_white, 0.65 + off);
		}
		else
		{
			draw_sprite_ext(s_lightBulb4, 0, x, y, 0.75+off, 0.75+off, 0, c_white, 0.65 + off);
		}
	}
	
	//----- CAPSULE MIMIC ----//
	with(o_capsule_Mimic)
	{
		off = random_range(0.02, -0.02);
	
		if (enchufeActive)
		{
			draw_sprite_ext(s_lightBulb4, 0, x, y, 1+off, 1+off, 0, c_white, 0.65 + off);
		}
		else
		{
			draw_sprite_ext(s_lightBulb4, 0, x, y, 0.75+off, 0.75+off, 0, c_white, 0.5 + off);
		}
	}
}