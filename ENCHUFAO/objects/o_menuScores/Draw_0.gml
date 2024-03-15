/// @description Insert description here
// You can write your code in this editor


orange = make_color_rgb(254,174, 52);
achievement = ds_map_find_value(global.achievementList, selectedAch);



if (scaleArrowsR > 0)
{
	scaleArrowsR -=0.1;
}

if (scaleArrowsL > 0)
{
	scaleArrowsL -=0.1;
}

switch(selected)
{
	case 0:
	{
		initialStat = lerp(initialStat, 35,factor);
		initialAch = lerp(initialAch, 260,factor);
		initialScores = lerp(initialScores, 288 ,factor)
		initialBestiary =  lerp(initialBestiary, 310,factor);
		initialBack = lerp(initialBack, 330,factor);
	
		
		initialAlpha= 0;
		
		draw_sprite_ext(s_statsHome, 1,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialStat,1.1,1.1,0,image_blend, image_alpha)	
		for (var i = 0; i< global.numberOfStats; i++)
		{
			stat = ds_map_find_value(global.statsList, i)

			draw_set_halign(fa_center)
			draw_set_font(global.customFont14)
			draw_set_color(global.lightBlue)
			draw_text(__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+46+i*15, string(stat.textStat))
			draw_set_color(c_white)
			draw_text(__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+45+i*15, string(stat.textStat))
		}
		
		draw_sprite_ext(s_achievementsHome,1, __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialAch,0.8,0.8,0,image_blend, 0.7)
		draw_sprite_ext(s_highscoresMenu,1, __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialScores,0.7,0.7,0,image_blend, 0.7)
		draw_sprite_ext(s_bestiaryMenu,0, __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialBestiary,0.7,0.7,0,image_blend, 0.7)
		draw_sprite_ext(s_backMenu,0, __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialBack,0.6,0.6,0,image_blend, 0.7)
	}
	break;
	
	case 1:
	{
		
		initialStat = lerp(initialStat, 40,factor);
		initialAch = lerp(initialAch, 70,factor);
		initialScores = lerp(initialScores, 270 ,factor)
		initialBestiary =  lerp(initialBestiary, 300,factor);
		initialBack = lerp(initialBack, 325,factor);
		initialAlpha = lerp(initialAlpha, 1,0.1);
		draw_sprite_ext(s_statsHome, 1,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialStat,0.9,0.9,0,image_blend, 0.7)	
		
		if (initialAch <140)
		{
			draw_sprite_ext(achievement.imageSprite, achievement.unlocked,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+110,1,1,0,image_blend, initialAlpha)	
			draw_sprite_ext(s_arrows,0, __view_get( e__VW.XView, 0 )+ 255,__view_get( e__VW.YView, 0 )+140,1+scaleArrowsL,1+scaleArrowsL,0,image_blend, initialAlpha)
			draw_sprite_ext(s_arrows,1, __view_get( e__VW.XView, 0 )+ 389,__view_get( e__VW.YView, 0 )+140,1+scaleArrowsR,1+scaleArrowsR,0,image_blend, initialAlpha)
		}
		draw_sprite_ext(s_achievementsHome, 1,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialAch,1.1,1.1,0,image_blend, image_alpha)	
		draw_sprite_ext(s_highscoresMenu,1, __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialScores,0.9,0.9,0,image_blend, 0.7)
		draw_sprite_ext(s_bestiaryMenu,0, __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialBestiary,0.8,0.8,0,image_blend, 0.7)
		draw_sprite_ext(s_backMenu,0, __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialBack,0.7,0.7,0,image_blend, 0.7)
	}
	break;
	
	case 2:
	{
		
		initialStat = lerp(initialStat, 45,factor);
		initialAch = lerp(initialAch, 70,factor);
		initialScores = lerp(initialScores, 100 ,factor)
		initialBestiary =  lerp(initialBestiary, 305,factor);
		initialBack = lerp(initialBack, 330,factor);
		initialAlpha= 0;
		
		draw_sprite_ext(s_statsHome, 1,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialStat,0.8,0.8,0,image_blend, 0.7)	
		
		draw_sprite_ext(s_achievementsHome, 1,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialAch,0.9,0.9,0,image_blend, 0.7)	
		draw_sprite_ext(s_highscoresMenu,1, __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialScores,1.1,1.1,0,image_blend, image_alpha)
		draw_sprite_ext(s_bestiaryMenu,0, __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialBestiary,0.9,0.9,0,image_blend, 0.7)
		draw_sprite_ext(s_backMenu,0, __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialBack,0.8,0.8,0,image_blend, 0.7)
	}
	break;
		
	case 3:
	{
		initialStat = lerp(initialStat, 40,factor);
		initialAch = lerp(initialAch, 60,factor);
		initialScores = lerp(initialScores, 85 ,factor)
		initialBestiary =  lerp(initialBestiary, 117,factor);
		initialBack = lerp(initialBack, 331,factor);
		initialAlpha = lerp(initialAlpha, 1,0.1);
		
		draw_sprite_ext(s_statsHome, 1,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialStat,0.6,0.6,0,image_blend, 0.7)	
		
		DrawSpriteBestiary()
		
		draw_sprite_ext(s_achievementsHome, 1,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialAch,0.7,0.7,0,image_blend, 0.7)	
		draw_sprite_ext(s_highscoresMenu,1, __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialScores,0.8,0.8,0,image_blend, 0.7)
		draw_sprite_ext(s_bestiaryMenu,0, __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialBestiary,1.1,1.1,0,image_blend, image_alpha)
		draw_sprite_ext(s_backMenu,0, __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialBack,0.8,0.8,0,image_blend, 0.7)
		draw_sprite_ext(s_arrows,0, __view_get( e__VW.XView, 0 )+270,__view_get( e__VW.YView, 0 )+145,1+scaleArrowsL,1+scaleArrowsL,0,image_blend, 1)
		draw_sprite_ext(s_arrows,1, __view_get( e__VW.XView, 0 )+370,__view_get( e__VW.YView, 0 )+145,1+scaleArrowsR,1+scaleArrowsR,0,image_blend, 1)
	
	}
	break;
	
	case 4:
	{
		initialStat = lerp(initialStat, 85,factor);
		initialAch = lerp(initialAch, 110,factor);
		initialScores = lerp(initialScores, 140 ,factor)
		initialBestiary =  lerp(initialBestiary, 170,factor);
		initialBack = lerp(initialBack, 230,factor);
		initialAlpha= 0;
		
		draw_sprite_ext(s_statsHome, 1,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialStat,0.6,0.6,0,image_blend, 0.7)	
		
		draw_sprite_ext(s_achievementsHome, 1,  __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialAch,0.7,0.7,0,image_blend, 0.7)	
		draw_sprite_ext(s_highscoresMenu,1, __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialScores,0.8,0.8,0,image_blend, 0.7)
		draw_sprite_ext(s_bestiaryMenu,0, __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialBestiary,0.8,0.8,0,image_blend, 0.7)
		
		draw_sprite_ext(s_backMenu,0, __view_get( e__VW.XView, 0 )+ 320,__view_get( e__VW.YView, 0 )+initialBack,1.1,1.1,0,image_blend, image_alpha)
	}
	break;
}

