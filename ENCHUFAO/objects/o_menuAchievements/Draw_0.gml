/// @description Insert description here
// You can write your code in this editor


orange = make_color_rgb(254,174, 52);


achievement = ds_map_find_value(global.achievementList, selected)

draw_sprite_ext(s_achievementsHome, 0,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+50,0.8,0.8,0,image_blend, image_alpha)	

draw_sprite_ext(achievement.imageSprite, achievement.unlocked,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+110,1,1,0,image_blend, image_alpha)	
draw_sprite_ext(s_arrows,0, __view_get( e__VW.XView, 0 )+ 255,__view_get( e__VW.YView, 0 )+140,1,1,0,image_blend, image_alpha)
draw_sprite_ext(s_arrows,1, __view_get( e__VW.XView, 0 )+ 389,__view_get( e__VW.YView, 0 )+140,1,1,0,image_blend, image_alpha)


draw_sprite_ext(s_back,0, __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+320,1.2,1.2,0,image_blend, image_alpha)

