/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

if (pluggedInAmmoTut = false)
{
		draw_sprite_ext(s_moveTutorial, 0, __view_get( e__VW.XView, 0 )+265,__view_get( e__VW.YView, 0 )+325,0.6,0.6,0,image_blend, image_alpha)
		draw_sprite_ext(s_moveTutorial, 1, __view_get( e__VW.XView, 0 )+375,__view_get( e__VW.YView, 0 )+325,0.6,0.6,0,image_blend, image_alpha)		
}

if (pluggedInAmmoTut = true) && (pluggedInHPTut = false)
{
	draw_sprite_ext(s_moveTutorial, 2, __view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+330,0.6,0.6,0,image_blend, image_alpha)
}

if instance_exists(o_enchufe)
{
	if (o_enchufe.enchufeActive)
	{
		draw_sprite_ext(s_energyText, 0, o_enchufe.x,o_enchufe.y+40,0.6,0.6,0,image_blend, image_alpha)
		pluggedInEnergyTut = true;
		
		if (energyFirstTime = false)
		{
			global.infiniteEnergyIsOn = false;
			
			global.energy = 50;
			energyFirstTime = true;
		}
	}
}
if instance_exists(o_enchufe_Ammo)
{
	if (o_enchufe_Ammo.enchufeActive)
	{
		draw_sprite_ext(s_energyText, 2, o_enchufe_Ammo.x,o_enchufe_Ammo.y+40,0.6,0.6,0,image_blend, image_alpha)
		pluggedInAmmoTut = true;
		
		if (ammoFirstTime = false)
		{
			global.infiniteAmmoIsOn = false;
			global.ammo = 0;
			ammoFirstTime = true;
		}
	}
}
if instance_exists(o_enchufe_Hp)
{
	if (o_enchufe_Hp.enchufeActive)
	{
		draw_sprite_ext(s_energyText, 1, o_enchufe_Hp.x,o_enchufe_Hp.y+40,0.6,0.6,0,image_blend, image_alpha)
		pluggedInHPTut = true;
	}
}
if instance_exists(o_enchufe_Laser)
{
	if (o_enchufe_Laser.enchufeActive)
	{
		draw_sprite_ext(s_energyText, 3, o_enchufe_Laser.x,o_enchufe_Laser.y+40,0.6,0.6,0,image_blend, image_alpha)
		
		if (laserFirstTime = false)
		{
			global.infiniteLaserIsOn = false;
			global.laser = 0;
			laserFirstTime = true;
		}
		pluggedInLaserTut = true
	
	}
}