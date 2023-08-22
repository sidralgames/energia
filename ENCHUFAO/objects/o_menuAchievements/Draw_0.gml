/// @description Insert description here
// You can write your code in this editor

azul = make_color_rgb(44,232, 245);
orange = make_color_rgb(254,174, 52);
yellow = make_color_rgb(254,231, 97);

achievement = ds_map_find_value(global.achievementList, selected)

draw_sprite_ext(s_achievementsHome, 0,  __view_get( e__VW.XView, 0 )+ 160,__view_get( e__VW.YView, 0 )+140,0.8,0.8,0,image_blend, image_alpha)	

draw_sprite_ext(achievement.imageSprite, achievement.unlocked,  __view_get( e__VW.XView, 0 )+ 160,__view_get( e__VW.YView, 0 )+170,1,1,0,image_blend, image_alpha)	
draw_sprite_ext(s_arrows,0, __view_get( e__VW.XView, 0 )+ 95,__view_get( e__VW.YView, 0 )+200,1,1,0,image_blend, image_alpha)
draw_sprite_ext(s_arrows,1, __view_get( e__VW.XView, 0 )+ 219,__view_get( e__VW.YView, 0 )+200,1,1,0,image_blend, image_alpha)



draw_sprite_ext(s_statsHome, 0,  __view_get( e__VW.XView, 0 )+ 470,__view_get( e__VW.YView, 0 )+140,0.8,0.8,0,image_blend, image_alpha)	

for (var i = 0; i< global.numberOfStats; i++)
{
	stat = ds_map_find_value(global.statsList, i)

	draw_set_halign(fa_left)
	draw_set_font(customFont2)
	draw_set_color(azul)
	draw_text(__view_get( e__VW.XView, 0 )+369,__view_get( e__VW.YView, 0 )+161+i*17, string(stat.textStat))
	draw_set_color(c_white)
	draw_text(__view_get( e__VW.XView, 0 )+370,__view_get( e__VW.YView, 0 )+160+i*17, string(stat.textStat))

}
