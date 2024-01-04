// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function UIBossGarbanzo()
{
	if (room = Sala_SecondBoss) && instance_exists(o_BossMecha_Inside) && (global.BossGarbanzo_Awaken = true) // && !instance_exists(o_BreachBossBanner)
	{
		//draw_sprite_ext(s_bossName_LilCrusher, 0,__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+20, 1,1,image_angle, image_blend, image_alpha)
		draw_sprite_ext(s_bossHealthBar_Out, 0,__view_get( e__VW.XView, 0 )+230,__view_get( e__VW.YView, 0 )+20, 1,1,image_angle, image_blend, image_alpha)
		draw_sprite_ext(s_bossHealthBar_In, 0,__view_get( e__VW.XView, 0 )+233,__view_get( e__VW.YView, 0 )+20, o_BossMecha_Inside.hp/o_BossMecha_Inside.hpMax, 1,image_angle, image_blend, image_alpha)
		draw_sprite_ext(s_bossHealthBar_OutFront, 0,__view_get( e__VW.XView, 0 )+230,__view_get( e__VW.YView, 0 )+20, 1,1,image_angle, image_blend, image_alpha)
		
		if (o_BossMecha_Inside.hp >= 95)
		{
			draw_set_font(global.customFont14)
			draw_set_halign(fa_center)
			draw_set_color(global.dark)
			draw_text(__view_get( e__VW.XView, 0 )+324,__view_get( e__VW.YView, 0 )+5,string(round(o_BossMecha_Inside.hp)))
			draw_set_color(c_white)
			draw_text(__view_get( e__VW.XView, 0 )+325,__view_get( e__VW.YView, 0 )+4,string(round(o_BossMecha_Inside.hp)))
		}
		else
		{
			draw_set_font(global.customFont14)
			draw_set_halign(fa_center)
			draw_set_color(global.dark)
			draw_text(__view_get( e__VW.XView, 0 )+324,__view_get( e__VW.YView, 0 )+5,string(round(o_BossMecha_Inside.hp)))
			draw_set_color(global.brightRed)
			draw_text(__view_get( e__VW.XView, 0 )+325,__view_get( e__VW.YView, 0 )+4,string(round(o_BossMecha_Inside.hp)))
		}
	}
	draw_set_color(c_white)
}