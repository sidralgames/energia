/// @description Insert description here
// You can write your code in this editor
draw_set_halign(fa_left)

azul = make_color_rgb(44,232, 245) 
azulO = make_color_rgb(0,149,233)
rojo = make_color_rgb(228,59, 68) 
//draw_text(__view_get( e__VW.XView, 0 )+20,__view_get( e__VW.YView, 0 )+40,"ENERGY: " + string(round(global.energy)) + " / " + string(round(global.energyTotal)))

//draw_text(__view_get( e__VW.XView, 0 )+20,__view_get( e__VW.YView, 0 )+60,"HP: " + string(round(global.hp)) + " / " + string(round(global.hpMax)))

//draw_text(__view_get( e__VW.XView, 0 )+20,__view_get( e__VW.YView, 0 )+80,"SHIELDS: " + string(round(global.laser)) + " / " + string(round(global.laserMax)))

//draw_text(__view_get( e__VW.XView, 0 )+20,__view_get( e__VW.YView, 0 )+100,"milisecsSlow: " + string(global.slowmilisecs))

//draw_text(__view_get( e__VW.XView, 0 )+20,__view_get( e__VW.YView, 0 )+120,"milisecsConnec: " + string(global.connectedmilisecs))
//if (global.spriteShip = splayer)
//{
//	ship = 0;
//}
//if (global.spriteShip = splayer_Blue)
//{
//	ship = 1;
//}
//if (global.spriteShip = splayer_Red)
//{
//	ship = 2;
//}
//if (global.spriteShip = splayer_Dark)
//{
//	ship = 3;
//}
//if (global.spriteShip = splayer_Purple)
//{
//	ship = 4;
//}
//if (global.spriteShip = splayer_mp3)
//{
//	ship = 5;
//}

if (!isPaused)
{

	if (room != Sala_Inicio)
	{
		
		//draw_sprite_ext(s_hpNewUIEnergScreen,0,__view_get( e__VW.XView, 0 )+43,__view_get( e__VW.YView, 0 )+35,1,1,0,image_blend, image_alpha)
		
		if (global.energy <= global.energyLow+30)
		{
			draw_sprite_ext(s_energyBarDanger,0,__view_get( e__VW.XView, 0 )+17,__view_get( e__VW.YView, 0 )+47,(global.energy/global.energyTotal),1,0,image_blend, image_alpha)
		}
		else
		{
			draw_sprite_ext(s_energyBar_in,0,__view_get( e__VW.XView, 0 )+17,__view_get( e__VW.YView, 0 )+47,(global.energy/global.energyTotal),1,0,image_blend, image_alpha)
			
		}
		draw_sprite_ext(s_laserUI,0,__view_get( e__VW.XView, 0 )+13,__view_get( e__VW.YView, 0 )+68,1,(global.laser/global.laserMax),0,image_blend, image_alpha)
		draw_sprite_ext(s_ammoUI,0,__view_get( e__VW.XView, 0 )+33,__view_get( e__VW.YView, 0 )+68,1,(global.ammo/global.ammoMax),0,image_blend, image_alpha)
		draw_sprite_ext(s_hpNewUI,0,__view_get( e__VW.XView, 0 )+12,__view_get( e__VW.YView, 0 )+30,1,1,0,image_blend, image_alpha)
		draw_sprite_ext(s_SCOREUI,0,__view_get( e__VW.XView, 0 )+640,__view_get( e__VW.YView, 0 )+0,1,1,0,image_blend, image_alpha)


	
		for (var k=0; k< global.hpMax; k++)
		{
			draw_sprite_ext(s_hpDinamicBack, 0, __view_get( e__VW.XView, 0 )+36+ (k*17),__view_get( e__VW.YView, 0 )+28, 1,1,0,image_blend, image_alpha)
		}
		
		for (var i=0; i< floor(global.hp); i++)
		{
			draw_sprite_ext(s_hpDinamic, 0, __view_get( e__VW.XView, 0 )+36+ (i*17),__view_get( e__VW.YView, 0 )+28, 1,1,0,image_blend, image_alpha)
		}
		
		for (var h=0; h< (global.shields); h++)
		{
			draw_sprite_ext(s_shieldDinamic, 0, __view_get( e__VW.XView, 0 )+36+ (k*17) + (h*17),__view_get( e__VW.YView, 0 )+28, 1,1,0,image_blend, image_alpha)
		}

		draw_sprite_ext(s_hpNewUI,0,__view_get( e__VW.XView, 0 )+12,__view_get( e__VW.YView, 0 )+30,1,1,0,image_blend, image_alpha)
		
		
		for (var a=0; a< floor(global.bombAmmo); a++)
		{
			if (global.bombIsClusterBomb)
			{
				draw_sprite_ext(s_bombUICluster, 0, __view_get( e__VW.XView, 0 )+16+ (a*19),__view_get( e__VW.YView, 0 )+62, 1,1,0,image_blend, image_alpha)
			}
			else
			{
				draw_sprite_ext(s_bombUI, 0, __view_get( e__VW.XView, 0 )+16+ (a*19),__view_get( e__VW.YView, 0 )+62, 1,1,0,image_blend, image_alpha)
			}
		}
		
		for (var t=0; t< global.PETAAmmo; t++)
		{
			draw_sprite_ext(s_petaUI, 0, __view_get( e__VW.XView, 0 )+53,__view_get( e__VW.YView, 0 )+84 + (t*21), 1,1,0,image_blend, image_alpha)
		}
		
		
	}
	//draw_text(__view_get( e__VW.XView, 0 )+30,__view_get( e__VW.YView, 0 )+20, "existe " + string(global.EXISTE))
	if (room != Sala_Inicio)
	{
	draw_set_alpha(1);
	draw_set_halign(fa_left)
	draw_set_font(customFont2)
	draw_set_color(azulO)
	//draw_text(__view_get( e__VW.XView, 0 )+564,__view_get( e__VW.YView, 0 )+7, string(global.level))
	
	draw_text(__view_get( e__VW.XView, 0 )+581,__view_get( e__VW.YView, 0 )-3, string(global.XPpoints))
	//draw_text(__view_get( e__VW.XView, 0 )+630,__view_get( e__VW.YView, 0 )+61, "Enemies: " + string(global.enemies))
	//draw_text(__view_get( e__VW.XView, 0 )+630,__view_get( e__VW.YView, 0 )+81, "Enemies max: " + string(global.enemiesMax))
	draw_set_color(c_white)
	//draw_text(__view_get( e__VW.XView, 0 )+565,__view_get( e__VW.YView, 0 )+6, string(global.level))
	
	draw_text(__view_get( e__VW.XView, 0 )+582,__view_get( e__VW.YView, 0 )-4, string(global.XPpoints))
	//draw_text(__view_get( e__VW.XView, 0 )+630,__view_get( e__VW.YView, 0 )+60, "Enemies: " + string(global.enemies))
	//draw_text(__view_get( e__VW.XView, 0 )+630,__view_get( e__VW.YView, 0 )+80, "Enemies max: " + string(global.enemiesMax))

	//if instance_exists(o_waller)
	//{
	//draw_text(__view_get( e__VW.XView, 0 )+20,__view_get( e__VW.YView, 0 )+60, "LEVEL TYPE: " + string(o_waller.levelType))

	//}

	}
	if instance_exists(o_playerShip) && (room != Sala_Inicio)
	{
		if (o_playerShip.key_BulletTime) && (o_playerShip.canSlowMotion)
		{
			draw_sprite_ext(s_bulletTimeIndicator,1,__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+345,1,1,0,image_blend, image_alpha)
			draw_sprite_ext(s_bulletTimeIndicator,0,__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+345,(global.slowMoTime/global.slowMoTimeMax),1,0,image_blend, image_alpha)
		}
		if (alarm[1] >0)
		{
			draw_sprite_ext(s_bulletTimeIndicator,1,__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+345,1,1,0,image_blend, 0.6)
			draw_sprite_ext(s_bulletTimeIndicator,0,__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+345,(global.slowMoTime/global.slowMoTimeMax),1,0,image_blend, 0.6)
		}
		
		
		//draw_set_halign(fa_left)
		//draw_set_color(azul)
		
		//draw_text(__view_get( e__VW.XView, 0 )+20,__view_get( e__VW.YView, 0 )+125, "x " + string(global.PETAAmmo))
	
		
		//draw_sprite_ext(s_PETApickUp, 0, __view_get( e__VW.XView, 0 )+20,__view_get( e__VW.YView, 0 )+125, 0.8,0.8,0,image_blend, image_alpha)
		//draw_set_color(c_white)

		//draw_text(__view_get( e__VW.XView, 0 )+21,__view_get( e__VW.YView, 0 )+124, "x " + string(global.PETAAmmo))
		
		
	}
	draw_set_color(c_white)
	//if (room = Sala_0)
	//{
	//	if (speaking = false)
	//	{
	//		speaking = true;
	//		instance_create(__view_get( e__VW.XView, 0 )+240,__view_get( e__VW.YView, 0 )+300,o_sezar)
	//		ActivateSEZAR()
		
	//	}
	//	if instance_exists(oTextAlone)
	//	{
	//		draw_sprite_ext(s_sezar, image_index,__view_get( e__VW.XView, 0 )+110,__view_get( e__VW.YView, 0 )+310,1,1,0,image_blend,image_alpha)
	//	}
	
	//}
	draw_set_font(customFont)
	if (global.energy <=global.energyLow)
	{
		if global.PETAAmmo > 0
		{
			if (alarm[0] <30)
			{
				draw_set_halign(fa_center)
				draw_set_font(Font2)
				draw_set_color(c_white)
				draw_text(__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+281, "L3 + R3" )
				draw_text(__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+306, "TRHOW P.E.T.A")

				draw_set_color(azul)
				draw_text(__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+280, "L3 + R3" )
				draw_text(__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+305, "TRHOW P.E.T.A")
			}
	
			if (alarm[0] <= 0)
			{
				alarm[0] = 40;	
			}
		}
		draw_set_color(rojo)
		draw_set_alpha(0.05)
		draw_rectangle(__view_get( e__VW.XView, 0 )+0,__view_get( e__VW.YView, 0 )+0,__view_get( e__VW.XView, 0 )+640,__view_get( e__VW.YView, 0 )+360,false)
		draw_set_color(c_white)
	}

	draw_set_alpha(1)


	if (room = Sala_FirstBoss) && (global.BossBreach_awaken = true) && !instance_exists(o_BreachBossBanner)
	{
		draw_sprite_ext(s_bossName_Breacher, 0,__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+20, 1,1,image_angle, image_blend, image_alpha)
		draw_sprite_ext(s_bossHealthBar_Out, 0,__view_get( e__VW.XView, 0 )+230,__view_get( e__VW.YView, 0 )+35, 1,1,image_angle, image_blend, image_alpha)
		draw_sprite_ext(s_bossHealthBar_In, 0,__view_get( e__VW.XView, 0 )+233,__view_get( e__VW.YView, 0 )+35, global.BossBreach_HP/global.BossBreach_HPMax, 1,image_angle, image_blend, image_alpha)
		draw_sprite_ext(s_bossHealthBar_OutFront, 0,__view_get( e__VW.XView, 0 )+230,__view_get( e__VW.YView, 0 )+35, 1,1,image_angle, image_blend, image_alpha)
	}


	if (alarm[2]>0)
	{
		draw_sprite_ext(s_ship_unlocked,0,__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+120,1,1,0,image_blend, image_alpha)	
	}

}