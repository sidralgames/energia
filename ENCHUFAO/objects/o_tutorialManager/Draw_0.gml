/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

//if (pluggedInAmmoTut = false)
//{
//		draw_sprite_ext(s_moveTutorial, 0, __view_get( e__VW.XView, 0 )+265,__view_get( e__VW.YView, 0 )+325,0.6,0.6,0,image_blend, image_alpha)
//		draw_sprite_ext(s_moveTutorial, 1, __view_get( e__VW.XView, 0 )+375,__view_get( e__VW.YView, 0 )+325,0.6,0.6,0,image_blend, image_alpha)		
//}

//if (pluggedInAmmoTut = true) && (pluggedInHPTut = false)
//{
//	draw_sprite_ext(s_moveTutorial, 2, __view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+330,0.6,0.6,0,image_blend, image_alpha)
//}
if instance_exists(o_playerShip)
{
	if instance_exists(o_enchufe_Final) && instance_exists(o_playerShip)
	{
	
		if (point_distance(o_playerShip.x, o_playerShip.y, o_enchufe_Final.x, o_enchufe_Final.y) < 200)
		{
			if (o_enchufe_Final.abierto = false) && (global.level > -2)
			{
				draw_sprite_ext(s_tutorialText, 4, o_enchufe_Final.x,o_enchufe_Final.y-55,0.6,0.6,0,image_blend, image_alpha)
			}
			else if (o_enchufe_Final.abierto = true)
			{
				draw_sprite_ext(s_tutorialText, 2, o_enchufe_Final.x,o_enchufe_Final.y-55,0.6,0.6,0,image_blend, image_alpha)
			}
		}
		
	}
	
	if instance_exists(o_enchufe)
	{
		if (point_distance(o_playerShip.x, o_playerShip.y, o_enchufe.x, o_enchufe.y) < 100)
		{
			draw_sprite_ext(s_energyText, 0, o_enchufe.x,o_enchufe.y+40,0.7,0.7,0,image_blend, image_alpha)
		}
	
		if (o_enchufe.enchufeActive)
		{
			draw_sprite_ext(s_energyText, 0, o_enchufe.x,o_enchufe.y+40,0.7,0.7,0,image_blend, image_alpha)
			pluggedInEnergyTut = true;
		
			//if (energyFirstTime = false)
			//{
			//	global.infiniteEnergyIsOn = false;
			//	global.energy = 50;
			//	energyFirstTime = true;
			//}
		}
	}
	if instance_exists(o_enchufe_Ammo)
	{
		if (point_distance(o_playerShip.x, o_playerShip.y, o_enchufe_Ammo.x, o_enchufe_Ammo.y) < 100)
		{
			draw_sprite_ext(s_energyText, 2, o_enchufe_Ammo.x,o_enchufe_Ammo.y+40,0.7,0.7,0,image_blend, image_alpha)
		}
	
		if (o_enchufe_Ammo.enchufeActive)
		{
			draw_sprite_ext(s_energyText, 2, o_enchufe_Ammo.x,o_enchufe_Ammo.y+40,0.7,0.7,0,image_blend, image_alpha)
			pluggedInAmmoTut = true;
		
			if (ammoFirstTime = false)
			{
				global.infiniteAmmoIsOn = false;
				global.ammo = 50;
				ammoFirstTime = true;
			}
		}
	}
	if instance_exists(o_enchufe_Hp)
	{
		if (point_distance(o_playerShip.x, o_playerShip.y, o_enchufe_Hp.x, o_enchufe_Hp.y) < 100)
		{
			draw_sprite_ext(s_energyText, 1, o_enchufe_Hp.x,o_enchufe_Hp.y+40,0.7,0.7,0,image_blend, image_alpha)
		}
	
		if (o_enchufe_Hp.enchufeActive)
		{
			draw_sprite_ext(s_energyText, 1, o_enchufe_Hp.x,o_enchufe_Hp.y+40,0.7,0.7,0,image_blend, image_alpha)
			pluggedInHPTut = true;
		}
	}
	if instance_exists(o_enchufe_Laser)
	{
		if (point_distance(o_playerShip.x, o_playerShip.y, o_enchufe_Laser.x, o_enchufe_Laser.y) < 100)
		{
			draw_sprite_ext(s_energyText, 3, o_enchufe_Laser.x,o_enchufe_Laser.y+40,0.7,0.7,0,image_blend, image_alpha)
		}
	
		if (o_enchufe_Laser.enchufeActive)
		{
			draw_sprite_ext(s_energyText, 3, o_enchufe_Laser.x,o_enchufe_Laser.y+40,0.7,0.7,0,image_blend, image_alpha)
		
			if (laserFirstTime = false)
			{
				global.infiniteLaserIsOn = false;
				global.laser = global.laserMax/2;
				laserFirstTime = true;
			}
			pluggedInLaserTut = true
		}
	}
}

if instance_exists(o_playerShip)
{
	if (canAssist)
	{
		draw_sprite_ext(s_moveTutorial, 5, o_playerShip.x,o_playerShip.y+40,0.5,0.5,0,image_blend, image_alpha)	
	
		contToAssist--;
		if (contToAssist <= 0)
		{
			global.assistedSlowmo = true;
		}
		
		if (global.assistedSlowmo)
		{	
			if (o_playerShip.key_BulletTime)
			{
				global.assistedSlowmo = false;
				canAssist = false;
			}
		}
	}
}

if (alarm[2] <= 0)
{
	alarm[2] = 60;
}