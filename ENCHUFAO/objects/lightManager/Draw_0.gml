/// @description Insert description here
// You can write your code in this editor


//------ PLAYER -----//
with(o_playerShip)
{
	
	if (global.energy <= 0)
	{
		off = random_range(0.05, -0.05);
		if (contLight <= 10)
		{
			draw_sprite_ext(s_lightBulb4, 0, x+lengthdir_x(5, _angle+90), y+lengthdir_y(5, _angle+90), 0.1+off, 0.1+off, 0, global.lightBlue, 0.5 + off);
		}
		else
		{
			draw_sprite_ext(s_lightBulb4, 0, x+lengthdir_x(5, _angle-90), y+lengthdir_y(5, _angle-90), 0.1+off, 0.1+off, 0, global.brightRed, 0.5 + off);
		}
	}
}



//----- ENCHUFES ----//

with(o_enchufeStandard_Father)
{
	if (soundActive)
	{
		offs = random_range(0.05, -0.05);
		
		draw_sprite_ext(s_lightBulb6, 0, x, y, 0.3+offs, 0.3+offs, 0, global.lightBlue, 0.4+offs);
	}
}

with(o_enchufeBombs)
{
	offs = random_range(0.05, -0.05);
	draw_sprite_ext(s_lightBulb6, 0, x, y, 0.2+offs, 0.2+offs, 0, global.lightBlue, 0.3+offs);
}

with(o_enchufePETA_Father)
{
	offs = random_range(0.05, -0.05);
	draw_sprite_ext(s_lightBulb6, 0, x, y, 0.15+offs, 0.15+offs, 0, global.lightBlue, 0.3+offs);
}




//----- EXPLOSIONS -----//
with(o_exploBomb)
{
	offs = random_range(0.05, -0.05);
	draw_sprite_ext(s_lightBulb6, 0, x, y, 1.5+offs, 1.5+offs, 0, global.lightBlue, 0.3+offs);
}


with(o_enemyP)
{
	if (enemyWithLight = true)
	{
		off = random_range(0.05, -0.05);
		draw_sprite_ext(sprite_index, 0, x, y, image_xscale, image_yscale, _angle, global.brightRed, 0.1);
	}
}

with(o_strandedShip)
{
	if (!chargedInHp) || (!chargedInEnergy) || (!chargedInAmmo)
	{
		contLight --;
		
		off = random_range(0.05, -0.05);
		if (contLight <= 10)
		{
			draw_sprite_ext(s_lightBulb4, 0, x+lengthdir_x(5, _angle+90), y+lengthdir_y(5, _angle+90), 0.05+off, 0.05+off, 0, global.lightBlue, 0.5 + off);
		}
		else
		{
			draw_sprite_ext(s_lightBulb4, 0, x+lengthdir_x(5, _angle-90), y+lengthdir_y(5, _angle-90), 0.05+off, 0.05+off, 0, global.brightRed, 0.5 + off);
		}
		if (contLight <= 0)
		{
			contLight = 20;
		}
	}
}




with(o_shield)
{
	off = random_range(0.05, -0.05);
	draw_sprite_ext(s_lightBulb4, 0, x, y, 0.15+off, 0.15+off, 0, global.lightBlue, 0.25);
}

with(o_ShieldpickUp)
{
	off = random_range(0.05, -0.05);
	draw_sprite_ext(s_lightBulb4, 0, x, y, 0.1+off, 0.1+off, 0, global.lightBlue, 0.25);
}