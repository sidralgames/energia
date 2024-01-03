// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function UIBossWorm()
{
	if instance_exists(o_BossWorm_Mouth)// && (global.BossGarbanzo_Awaken = true) // && !instance_exists(o_BreachBossBanner)
	{
		//draw_sprite_ext(s_bossName_Worm, 0,__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+20, 1,1,image_angle, image_blend, image_alpha)
		draw_sprite_ext(s_bossHealthBar_Out, 0,__view_get( e__VW.XView, 0 )+230,__view_get( e__VW.YView, 0 )+20, 1,1,image_angle, image_blend, image_alpha)
		draw_sprite_ext(s_bossHealthBar_In, 0,__view_get( e__VW.XView, 0 )+233,__view_get( e__VW.YView, 0 )+20, global.BossWormHP/global.BossWormHPMax, 1,image_angle, image_blend, image_alpha)
		draw_sprite_ext(s_bossHealthBar_OutFront, 0,__view_get( e__VW.XView, 0 )+230,__view_get( e__VW.YView, 0 )+20, 1,1,image_angle, image_blend, image_alpha)
	
		draw_set_font(global.customFont16)
		draw_set_halign(fa_right)
		draw_set_color(global.brightRed)
		draw_text(__view_get( e__VW.XView, 0 )+224,__view_get( e__VW.YView, 0 )+4,string(round(global.BossWormHP)))
		draw_set_color(c_white)
		draw_text(__view_get( e__VW.XView, 0 )+225,__view_get( e__VW.YView, 0 )+3,string(round(global.BossWormHP)))
	}
}