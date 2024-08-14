// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function UIPlayership()
{
	if (room != Sala_Inicio)
	{
		
		if (global.inTutorial = true) && instance_exists(o_tutorialManager)
		{
			if (o_tutorialManager.pluggedInEnergyTut)
			{
				if (global.energy <= global.energyLow+30)
				{
					draw_sprite_ext(s_energyBarDanger,0,__view_get( e__VW.XView, 0 )+17,__view_get( e__VW.YView, 0 )+47,(global.energy/global.energyMax),1,0,image_blend, image_alpha);
				}
				else
				{
					draw_sprite_ext(s_energyBar_in,0,__view_get( e__VW.XView, 0 )+17,__view_get( e__VW.YView, 0 )+47,(global.energy/global.energyMax),1,0,image_blend, image_alpha);
				}
				imageTut = 1;
			}

			if (o_tutorialManager.ammoCreated) && (o_tutorialManager.pluggedInAmmoTut)
			{
				draw_sprite_ext(s_ammoUI,0,__view_get( e__VW.XView, 0 )+33,__view_get( e__VW.YView, 0 )+68,1,(global.ammo/global.ammoMax),0,image_blend, image_alpha);
				imageTut = 2;
			}
			
			if (o_tutorialManager.laserCreated) && (o_tutorialManager.pluggedInLaserTut)
			{
				draw_sprite_ext(s_laserUI,0,__view_get( e__VW.XView, 0 )+13,__view_get( e__VW.YView, 0 )+68,1,(global.laser/global.laserMax),0,image_blend, image_alpha);
				imageTut = 3;
			}
			//draw_sprite_ext(s_hpNewUI,0,__view_get( e__VW.XView, 0 )+12,__view_get( e__VW.YView, 0 )+30,1,1,0,image_blend, image_alpha);
			draw_sprite_ext(s_SCOREUI,0,__view_get( e__VW.XView, 0 )+640,__view_get( e__VW.YView, 0 )+0,1,1,0,image_blend, image_alpha);

			for (var k=0; k< global.hpMax; k++)
			{
				draw_sprite_ext(s_hpDinamicBack, 0, __view_get( e__VW.XView, 0 )+36+ (k*17),__view_get( e__VW.YView, 0 )+28, 1,1,0,image_blend, image_alpha);
			}
		
			for (var i=0; i< floor(global.hp); i++)
			{
				draw_sprite_ext(s_hpDinamic, 0, __view_get( e__VW.XView, 0 )+36+ (i*17),__view_get( e__VW.YView, 0 )+28, 1,1,0,image_blend, image_alpha);
			}
		
			for (var h=0; h< (global.shields); h++)
			{
				draw_sprite_ext(s_shieldDinamic, 0, __view_get( e__VW.XView, 0 )+36+ (k*17) + (h*17),__view_get( e__VW.YView, 0 )+28, 1,1,0,image_blend, image_alpha);
			}

			draw_sprite_ext(s_hpNewUI_TUT,imageTut,__view_get( e__VW.XView, 0 )+12,__view_get( e__VW.YView, 0 )+30,1,1,0,image_blend, image_alpha);
		
			if (o_tutorialManager.ammoCreated) && (o_tutorialManager.pluggedInAmmoTut)
			{
				for (var a=0; a< floor(global.bombAmmo); a++)
				{
					if (global.bombIsClusterBomb)
					{
						draw_sprite_ext(s_bombUICluster, 0, __view_get( e__VW.XView, 0 )+16+ (a*19),__view_get( e__VW.YView, 0 )+62, 1,1,0,image_blend, image_alpha);
					}
					else
					{
						draw_sprite_ext(s_bombUI, 0, __view_get( e__VW.XView, 0 )+16+ (a*19),__view_get( e__VW.YView, 0 )+62, 1,1,0,image_blend, image_alpha);
					}
				}
			}
		
			if (global.allPETAisMulti)
			{
				imagePeta = 1;
			}
			else
			{
				imagePeta = 0;
			}
		
			//for (var t=0; t< global.PETAAmmo; t++)
			//{
			//	draw_sprite_ext(s_petaUI, imagePeta, __view_get( e__VW.XView, 0 )+53,__view_get( e__VW.YView, 0 )+84 + (t*21), 1,1,0,image_blend, image_alpha);
			//}
			
			
		}
		else
		{
			//-- UI (HP AMMO LASER BOMBAS PETAS) --//
			if (global.energy <= global.energyLow+30)
			{
				draw_sprite_ext(s_energyBarDanger,0,__view_get( e__VW.XView, 0 )+17,__view_get( e__VW.YView, 0 )+47,(global.energy/global.energyMax),1,0,image_blend, image_alpha);
			}
			else
			{
				draw_sprite_ext(s_energyBar_in,0,__view_get( e__VW.XView, 0 )+17,__view_get( e__VW.YView, 0 )+47,(global.energy/global.energyMax),1,0,image_blend, image_alpha);
			}
		
			draw_sprite_ext(s_laserUI,0,__view_get( e__VW.XView, 0 )+13,__view_get( e__VW.YView, 0 )+68,1,(global.laser/global.laserMax),0,image_blend, image_alpha);
			draw_sprite_ext(s_ammoUI,0,__view_get( e__VW.XView, 0 )+33,__view_get( e__VW.YView, 0 )+68,1,(global.ammo/global.ammoMax),0,image_blend, image_alpha);
			draw_sprite_ext(s_hpNewUI,0,__view_get( e__VW.XView, 0 )+12,__view_get( e__VW.YView, 0 )+30,1,1,0,image_blend, image_alpha);
			draw_sprite_ext(s_SCOREUI,0,__view_get( e__VW.XView, 0 )+640,__view_get( e__VW.YView, 0 )+0,1,1,0,image_blend, image_alpha);

			for (var k=0; k< global.hpMax; k++)
			{
				draw_sprite_ext(s_hpDinamicBack, 0, __view_get( e__VW.XView, 0 )+36+ (k*17),__view_get( e__VW.YView, 0 )+28, 1,1,0,image_blend, image_alpha);
			}
		
			for (var i=0; i< floor(global.hp); i++)
			{
				draw_sprite_ext(s_hpDinamic, 0, __view_get( e__VW.XView, 0 )+36+ (i*17),__view_get( e__VW.YView, 0 )+28, 1,1,0,image_blend, image_alpha);
			}
		
			for (var h=0; h< (global.shields); h++)
			{
				draw_sprite_ext(s_shieldDinamic, 0, __view_get( e__VW.XView, 0 )+36+ (k*17) + (h*17),__view_get( e__VW.YView, 0 )+28, 1,1,0,image_blend, image_alpha);
			}

			draw_sprite_ext(s_hpNewUI,0,__view_get( e__VW.XView, 0 )+12,__view_get( e__VW.YView, 0 )+30,1,1,0,image_blend, image_alpha);
		
		
			for (var a=0; a< floor(global.bombAmmo); a++)
			{
				if (global.bombIsClusterBomb)
				{
					draw_sprite_ext(s_bombUICluster, 0, __view_get( e__VW.XView, 0 )+16+ (a*19),__view_get( e__VW.YView, 0 )+62, 1,1,0,image_blend, image_alpha);
				}
				else
				{
					draw_sprite_ext(s_bombUI, 0, __view_get( e__VW.XView, 0 )+16+ (a*19),__view_get( e__VW.YView, 0 )+62, 1,1,0,image_blend, image_alpha);
				}
			}
		
			if (global.allPETAisMulti)
			{
				imagePeta = 1;
			}
			else
			{
				imagePeta = 0;
			}
		
			for (var t=0; t< global.PETAAmmo; t++)
			{
				draw_sprite_ext(s_petaUI, imagePeta, __view_get( e__VW.XView, 0 )+53,__view_get( e__VW.YView, 0 )+84 + (t*21), 1,1,0,image_blend, image_alpha);
			}
		}
		draw_set_alpha(1);
		draw_set_halign(fa_left);
		
		draw_set_font(global.customFont12);
		draw_set_color(global.blue);
		draw_text(__view_get( e__VW.XView, 0 )+581,__view_get( e__VW.YView, 0 )-3, string(global.XPpoints));
		draw_set_color(c_white);
		draw_text(__view_get( e__VW.XView, 0 )+582,__view_get( e__VW.YView, 0 )-4, string(global.XPpoints));
	}
}