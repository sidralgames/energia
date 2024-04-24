/// @description Insert description here
// You can write your code in this editor

 


//draw_text(x,y-30, "pluggedInEnchufeBroken " + string(pluggedInEnchufeBroken));

if (global.laser > 0)
{
	DrawLaserPlayer(_angle);
}

if (global.externalBatteryOn)
{
	draw_sprite_ext(s_enchufeChargeHP_In, 0, x-21, y-25, (contExternalBattery/contExternalBatteryMax)/2 ,1, 0, image_blend, image_alpha)
	draw_sprite_ext(s_enchufeChargeHP_Out, 0, x-21, y-25, 0.5,1, 0, image_blend, image_alpha)	
}


DrawPotentialConnection();

if (global.radarIsOn = true)
{
	DrawRadar();
}

if (tocado) && (alarm[4] > 2)
{
	shader_set(shFlash)
	draw_sprite_ext(global.spriteShip,image_index,x,y,1,1,_angle,c_white,1)
	shader_reset()
}
else
{
	draw_sprite_ext(global.spriteShip,image_index,x,y,1,1,_angle,_colorWhite,_alpha)
}

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
if (global.hp < 2*global.damageReceived)
{
	imageStrandedHp+=0.05;

	draw_sprite_ext(s_hpPlayer, imageStrandedHp, x, y-22,  1,1, 0, image_blend, image_alpha)	
}
if (global.energy <= global.energyLow)
{
	imageStrandedEnergy+=0.05;
}
else
{
	imageStrandedEnergy = 0;	
}


if (pluggedTimer >= pluggedTimerAlert)
{
	if (plugged) 
	{
		draw_sprite_ext(s_overcharge, 0, x, y-43,1,1.1,0,image_blend, image_alpha) 
	}
	
	draw_sprite_ext(s_enchufeChargeHP_Out_Red,0,x-21,y-33,0.5,1.1,0,image_blend, image_alpha)
	draw_sprite_ext(s_enchufeChargeHP_In_Red,0,x-21,y-33,((o_playerShip.pluggedTimer-o_playerShip.pluggedTimerAlert)/100)/2,1.1,0,image_blend, image_alpha)	
}

//showEnergy = true;

if (global.energy > 0) && (showEnergy)
{
	draw_sprite_ext(s_energyPlayer, imageStrandedEnergy, x+12, y-22,  1,1, 0, image_blend, image_alpha)
}
if (global.energy<=0)
{

	draw_sprite_ext(s_energyStranded, imageStrandedEnergy, x+12, y-22,  1,1, 0, image_blend, image_alpha)	
}	

if (global.energy <= global.energyMax/2 + global.energyMax/5)
{	
	showEnergy = true;
}

if (global.energy >= global.energyMax)
{
	showEnergy = false;
}

if (global.shockingPetasIsUpgraded)
{
	if (drawingShockPeta = true)
	{
		draw_set_alpha(0.01)
		draw_set_color(c_white)
		draw_rectangle(__view_get( e__VW.XView, 0 )+0,__view_get( e__VW.YView, 0 )+0,__view_get( e__VW.XView, 0 )+640,__view_get( e__VW.YView, 0 )+360,false);
		drawingShockPeta = false;	
	}
}


//if (global.temporaryFireRate >0) || (global.temporarySuperShot >0)
//{
//	draw_sprite_ext(s_chipAmmo, 0, x-lengthdir_x(9,70+_angle),y-lengthdir_y(9,70+_angle),  1,1, _angle, image_blend, image_alpha)	
//}

//if (global.temporaryLaser >0)
//{
//	draw_sprite_ext(s_chipLaser, 0, x-lengthdir_x(9,290+_angle),y-lengthdir_y(9,290+_angle),  1,1, _angle, image_blend, image_alpha)	
//}

//draw_text(x, y-50 ,string(instance_count));