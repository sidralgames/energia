/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

//--- LIGHT CYCLE ---//

//num +=1;
//black = make_color_rgb(num,num,num)

with(o_shield)
{
	off = random_range(0.05, -0.05);
	draw_sprite_ext(s_lightBulb4, 0, x, y, 0.2+off, 0.2+off, 0, c_white, 0.35);
}

with(o_ShieldpickUp)
{
	off = random_range(0.05, -0.05);
	draw_sprite_ext(s_lightBulb4, 0, x, y, 0.15+off, 0.15+off, 0, c_white, 0.5);
}


//------ PLAYER ------//
with(o_playerShip)
{
	if (laserActive)
	{
		draw_set_alpha(0.8)
		
		draw_circle_colour(x+lengthdir_x(10,_angle), y-1+lengthdir_y(10, _angle),(height*2)+blueWidht+0.5+global.laserWidth+global.amplifyPowerLaser+2,c_white, c_white, false)
		draw_circle_colour(x+lengthdir_x(maxLenght,_angle), y-1+lengthdir_y(maxLenght, _angle),(height*2)+blueWidht+2.5+global.laserWidth+global.amplifyPowerLaser,c_white, c_white, false)
		
		draw_line_width( x+lengthdir_x(13,_angle), y-1+lengthdir_y(13, _angle), x+lengthdir_x(maxLenght,_angle), y-1+lengthdir_y(maxLenght, _angle),(height * 5) + blueWidht+2+global.laserWidth+global.amplifyPowerLaser+3);
		
		draw_set_alpha(1)
	}
	
	
	if (global.energy <= 0)
	{
		contLight --;
		
		off = random_range(0.05, -0.05);
		if (contLight <= 10)
		{
			draw_sprite_ext(s_lightBulb4, 0, x+lengthdir_x(5, _angle+90), y+lengthdir_y(5, _angle+90), 0.1+off, 0.1+off, 0, c_white, 0.5 + off);
		}
		else
		{
			draw_sprite_ext(s_lightBulb4, 0, x+lengthdir_x(5, _angle-90), y+lengthdir_y(5, _angle-90), 0.1+off, 0.1+off, 0, c_white, 0.5 + off);
		}
		if (contLight <= 0)
		{
			contLight = 20;
		}
	}
	
	off = random_range(0.02, -0.02);
	maxLenght = 600;
	angOff = max(0, global.energy*0.05)
	iniOff = 7
	
	draw_sprite_ext(s_lightBulb4, 0, x, y, 0.5+off, 0.5+off, 0, c_white, 0.25);
	draw_set_alpha(0.28)
	draw_triangle_color(x-lengthdir_x(iniOff,_angle-90), y-lengthdir_y(iniOff, _angle-90), x+lengthdir_x(maxLenght,_angle+angOff), y-1+lengthdir_y(maxLenght, _angle+angOff), x+lengthdir_x(maxLenght,_angle-angOff), y-1+lengthdir_y(maxLenght, _angle-angOff), c_white, c_white, c_white, false);
	draw_triangle_color(x-lengthdir_x(iniOff,_angle+90), y-lengthdir_y(iniOff, _angle+90), x+lengthdir_x(maxLenght,_angle+angOff), y-1+lengthdir_y(maxLenght, _angle+angOff), x+lengthdir_x(maxLenght,_angle-angOff), y-1+lengthdir_y(maxLenght, _angle-angOff), c_white, c_white, c_white, false);
	draw_set_alpha(1)
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, _angle, c_white, 0.2);

	
}


with(o_chipFather)
{
	offs = random_range(0.01, -0.01);
	
	draw_sprite_ext(s_lightBulb4, 0, x, y, .1+offs, .1+offs, 0, c_white, 0.3 + offs);
}


with(o_exploBomb)
{
	off = random_range(0.05, -0.05);
	
	draw_sprite_ext(s_lightBulb4, 0, x, y, 1.2+off, 1.2+off, 0, c_white, 0.9 + off);
}


//------ ENCHUFES ------//
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


//------ CAPSULES ------//
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

//----- TORRETAS -----//

with(o_torreta)
{
	off = random_range(0.02, -0.02);
	
	draw_sprite_ext(s_lightBulb4, 0, x, y, 0.5+off, 0.5+off, 0, c_white, 0.5 + off);
}

with(o_temporaryPickUp)
{
	off = random_range(0.02, -0.02);
	draw_sprite_ext(s_lightBulb4, 0, x, y, 0.25+off, 0.25+off, 0, c_white, 0.5 + off);
}

with(o_enemyChipMimic)
{
	off = random_range(0.02, -0.02);
	draw_sprite_ext(s_lightBulb4, 0, x, y, 0.25+off, 0.25+off, 0, c_white, 0.5 + off);
}

with(o_enemyP)
{
	if (enemyWithLight = true)
	{
		off = random_range(0.05, -0.05);
		draw_sprite_ext(sprite_index, 0, x, y, image_xscale, image_yscale, _angle, c_white, 0.2);
	}
}


with(o_strandedShip)
{
	if (!chargedInHp) || (!chargedInEnergy) || (!chargedInAmmo)
	{
		off = random_range(0.05, -0.05);
		if (contLight <= 10)
		{
			draw_sprite_ext(s_lightBulb4, 0, x+lengthdir_x(5, _angle+90), y+lengthdir_y(5, _angle+90), 0.1+off, 0.1+off, 0, c_white, 0.5 + off);
		}
		else
		{
			draw_sprite_ext(s_lightBulb4, 0, x+lengthdir_x(5, _angle-90), y+lengthdir_y(5, _angle-90), 0.1+off, 0.1+off, 0, c_white, 0.5 + off);
		}
	}
	
	if (shipReady)
	{
		off = random_range(0.05, -0.05);
		draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, _angle, c_white, 0.2);
		draw_sprite_ext(s_lightBulb4, 0, x, y, 0.5+off, 0.5+off, 0, c_white, 0.15);
	}
}



