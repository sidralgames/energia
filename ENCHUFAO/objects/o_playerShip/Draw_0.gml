/// @description Insert description here
// You can write your code in this editor

 
height = sin(random(1));
draw_text(x,y-30, "trapped " + string(trapped));

if (global.laser > 0)
{
	DrawLaserPlayer(_angle);
}

if (global.externalBatteryOn)
{
	draw_sprite_ext(s_enchufeChargeHP_In, 0, x-21, y-25, (contExternalBattery/300)/2 ,1, 0, image_blend, image_alpha)
	draw_sprite_ext(s_enchufeChargeHP_Out, 0, x-21, y-25, 0.5,1, 0, image_blend, image_alpha)	
}


DrawPotentialConnection();


draw_sprite_ext(global.spriteShip,image_index,x,y,1,1,_angle,_colorWhite,_alpha)

if (global.ammo <= global.ammoMax/5)
{
	imageStrandedAmmo+=0.05;
	if (global.ammo >1)
	{
		draw_sprite_ext(s_ammoPlayer, imageStrandedAmmo, x-12, y-22, 1,1, 0, image_blend, image_alpha)	
	}
	else
	{
		draw_sprite_ext(s_ammoStranded, imageStrandedAmmo, x-12, y-22, 1,1, 0, image_blend, image_alpha)	
	}
}
if (global.hp <= 1*global.damageReceived)
{
	imageStrandedHp+=0.05;

	draw_sprite_ext(s_hpPlayer, imageStrandedHp, x, y-22,  1,1, 0, image_blend, image_alpha)	
}
if (global.energy <= global.energyLow)
{
	imageStrandedEnergy+=0.05;
	if (global.energy >0)
	{
		draw_sprite_ext(s_energyPlayer, imageStrandedEnergy, x+12, y-22,  1,1, 0, image_blend, image_alpha)	
	}
	else
	{
		draw_sprite_ext(s_energyStranded, imageStrandedEnergy, x+12, y-22,  1,1, 0, image_blend, image_alpha)	
	}
}

//draw_text(x, y-50 ,string(contExploTile));