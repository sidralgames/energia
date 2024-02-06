// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function SlowMoIndicator()
{
	if instance_exists(o_playerShip) && (room != Sala_Inicio) && (global.assistedSlowmo == false)
	{
		if (room = Sala_0) || (room = Sala_SecondBoss) || (room = Sala_BossWorm) || (room = Sala_Upgade) || (room = Sala_MegaUpgrade) 
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
		}
		else if (room = Sala_Tutorial)
		{
			if (o_playerShip.key_BulletTime) && (o_playerShip.canSlowMotion) && (o_tutorialText.LaserCreated)
			{
				draw_sprite_ext(s_bulletTimeIndicator,1,__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+345,1,1,0,image_blend, image_alpha)
				draw_sprite_ext(s_bulletTimeIndicator,0,__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+345,(global.slowMoTime/global.slowMoTimeMax),1,0,image_blend, image_alpha)
			}
			if (alarm[1] >0) && (o_tutorialText.LaserCreated)
			{
				draw_sprite_ext(s_bulletTimeIndicator,1,__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+345,1,1,0,image_blend, 0.6)
				draw_sprite_ext(s_bulletTimeIndicator,0,__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+345,(global.slowMoTime/global.slowMoTimeMax),1,0,image_blend, 0.6)
			}
		}
	}
}