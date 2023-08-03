/// @description Insert description here
// You can write your code in this editor
if (set)
{
	draw_sprite_ext(sprite, image_index,x,y,xscale,yscale,_angle,image_blend, image_alpha)
}


if (connectedToEnchufe)
{
	if instance_exists(o_cableStrandedShip)
	{
		StrandedShip_CheckEnchufe();
	}
}


imageStrandedAmmo+=0.05;
imageStrandedHp+=0.05;
imageStrandedEnergy+=0.05;


if (!chargedInAmmo)
{
	draw_sprite_ext(s_ammoStranded, imageStrandedAmmo, x-11, y-18, 1,1, 0, image_blend, image_alpha)	
}
if (!chargedInHp)
{
	draw_sprite_ext(s_hpStranded, imageStrandedHp, x, y-18,  1,1, 0, image_blend, image_alpha)	
}
if (!chargedInEnergy)
{
	draw_sprite_ext(s_energyStranded, imageStrandedEnergy, x+11, y-18,  1,1, 0, image_blend, image_alpha)	
}

if (shipReady)
{
	for (var i = 0; i < hpMax; i++)
	{
		draw_sprite_ext(s_hpStrandedShip, 1, x-13+(8*i), y-18,  1,1, 0, image_blend, image_alpha)	
	}
	
	for (var i = 0; i < floor(hp); i++)
	{
		draw_sprite_ext(s_hpStrandedShip, 0, x-13+(8*i), y-18,  1,1, 0, image_blend, image_alpha)	
	}
}

//draw_text(x,y-40,"hspeed " + string(hspeed));
//draw_text(x,y-60,"vspeed " + string(vspeed));
//draw_text(x,y-80,"speed " + string(speed));