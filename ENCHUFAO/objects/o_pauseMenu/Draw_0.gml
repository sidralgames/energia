/// @description Insert description here
// You can write your code in this editor
azul = make_color_rgb(44,232, 245);
orange = make_color_rgb(254,174, 52);
yellow = make_color_rgb(254,231, 97);


draw_sprite_ext(s_pauseBackground,spriteBack, __view_get( e__VW.XView, 0 )+0,__view_get( e__VW.YView, 0 )+0,1,1,0,image_blend, image_alpha)

timesToDraw = 0;

for (var i = 0; i<global.numberOfUpgradesPlayer; i++)
{
	upgrades = ds_map_find_value(global.PlayerUpgradesList, i);
	
	if (upgrades.times > 0) && (upgrades.inStat == false)
	{
		timesToDraw +=1;	
	
		if (upgrades.times = 1)
		{
			draw_set_halign(fa_left)
			draw_set_font(customFont)
			draw_set_color(orange)
			draw_text(__view_get( e__VW.XView, 0 )+13,__view_get( e__VW.YView, 0 )+201+timesToDraw*17, upgrades.nameUpgrade)
			draw_set_color(yellow)
			draw_text(__view_get( e__VW.XView, 0 )+14,__view_get( e__VW.YView, 0 )+200+timesToDraw*17, upgrades.nameUpgrade)
		}
		else
		{
			draw_set_halign(fa_left)
			draw_set_font(customFont)
			draw_set_color(orange)
			draw_text(__view_get( e__VW.XView, 0 )+13,__view_get( e__VW.YView, 0 )+201+timesToDraw*17, string(upgrades.nameUpgrade) +" x" + string(upgrades.times))
			draw_set_color(yellow)
			draw_text(__view_get( e__VW.XView, 0 )+14,__view_get( e__VW.YView, 0 )+200+timesToDraw*17, string(upgrades.nameUpgrade) +" x" + string(upgrades.times))
		}
	}
}

draw_sprite_ext(s_pause,0, __view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+50,1,1,0,image_blend, image_alpha)

draw_sprite_ext(s_shipstats,0, __view_get( e__VW.XView, 0 )+65,__view_get( e__VW.YView, 0 )+150,1,1,0,image_blend, image_alpha)

for (var i = 0; i <= global.energyStat-1; i++)
{
	if (i < global.energyStatInitial)
	{
		draw_sprite(s_indivStat, 0,  __view_get( e__VW.XView, 0 )+ 125 +(i * 15),__view_get( e__VW.YView, 0 )+100)	
	}
	else
	{
		draw_sprite(s_indivStat, 1,  __view_get( e__VW.XView, 0 )+ 125 +(i * 15),__view_get( e__VW.YView, 0 )+100)	
	}
}

for (var i = 0; i <= global.speedStat-1; i++)
{
	if (i < global.speedStatInitial)
	{
		draw_sprite(s_indivStat, 0,  __view_get( e__VW.XView, 0 )+ 125 +(i * 15),__view_get( e__VW.YView, 0 )+120)	
	}
	else
	{
		draw_sprite(s_indivStat, 1,  __view_get( e__VW.XView, 0 )+ 125 +(i * 15),__view_get( e__VW.YView, 0 )+120)	
	}
}

for (var i = 0; i <= global.hpStat-1; i++)
{
	if (i < global.HPStatInitial)
	{
		draw_sprite(s_indivStat, 0,  __view_get( e__VW.XView, 0 )+ 125 +(i * 15),__view_get( e__VW.YView, 0 )+140)	
	}
	else
	{
		draw_sprite(s_indivStat, 1,  __view_get( e__VW.XView, 0 )+ 125 +(i * 15),__view_get( e__VW.YView, 0 )+140)
	}
}

for (var i = 0; i <= global.ammoStat-1; i++)
{
	if (i < global.ammoStatInitial)
	{
		draw_sprite(s_indivStat, 0,  __view_get( e__VW.XView, 0 )+ 125 +(i * 15),__view_get( e__VW.YView, 0 )+160)	
	}
	else
	{
		draw_sprite(s_indivStat, 1,  __view_get( e__VW.XView, 0 )+ 125 +(i * 15),__view_get( e__VW.YView, 0 )+160)	
	}
}

for (var i = 0; i <= global.shieldStat-1; i++)
{
	if (i < global.shieldStatInitial)
	{
		draw_sprite(s_indivStat, 0,  __view_get( e__VW.XView, 0 )+ 125 +(i * 15),__view_get( e__VW.YView, 0 )+180)	
	}
	else
	{
		draw_sprite(s_indivStat, 1,  __view_get( e__VW.XView, 0 )+ 125 +(i * 15),__view_get( e__VW.YView, 0 )+180)	
	}
}

for (var i = 0; i <= global.cableStat-1; i++)
{
	if (i < global.cableStatInitial)
	{
		draw_sprite(s_indivStat, 0,  __view_get( e__VW.XView, 0 )+ 125 +(i * 15),__view_get( e__VW.YView, 0 )+200)	
	}
	else
	{
		draw_sprite(s_indivStat, 1,  __view_get( e__VW.XView, 0 )+ 125 +(i * 15),__view_get( e__VW.YView, 0 )+200)	
	}
}





//-------------MENU-------------////
switch(selected)
{
	case 0:
	{
		draw_sprite_ext(s_resume, 0,  __view_get( e__VW.XView, 0 )+ 500,__view_get( e__VW.YView, 0 )+140,1.2,1.2,0,image_blend, image_alpha)	
		draw_sprite_ext(s_options, 0,  __view_get( e__VW.XView, 0 )+ 500,__view_get( e__VW.YView, 0 )+180,1,1,0,image_blend, image_alpha)	
		draw_sprite_ext(s_mainMenu, 0,  __view_get( e__VW.XView, 0 )+ 500,__view_get( e__VW.YView, 0 )+220,1,1,0,image_blend, image_alpha)	
	}break;
	
	case 1:
	{
		draw_sprite_ext(s_resume, 0,  __view_get( e__VW.XView, 0 )+ 500,__view_get( e__VW.YView, 0 )+140,1,1,0,image_blend, image_alpha)	
		draw_sprite_ext(s_options, 0,  __view_get( e__VW.XView, 0 )+ 500,__view_get( e__VW.YView, 0 )+180,1.2,1.2,0,image_blend, image_alpha)	
		draw_sprite_ext(s_mainMenu, 0,  __view_get( e__VW.XView, 0 )+ 500,__view_get( e__VW.YView, 0 )+220,1,1,0,image_blend, image_alpha)	
	}break;
	
	case 2:
	{
		draw_sprite_ext(s_resume, 0,  __view_get( e__VW.XView, 0 )+ 500,__view_get( e__VW.YView, 0 )+140,1,1,0,image_blend, image_alpha)	
		draw_sprite_ext(s_options, 0,  __view_get( e__VW.XView, 0 )+ 500,__view_get( e__VW.YView, 0 )+180,1,1,0,image_blend, image_alpha)	
		draw_sprite_ext(s_mainMenu, 0,  __view_get( e__VW.XView, 0 )+ 500,__view_get( e__VW.YView, 0 )+220,1.2,1.2,0,image_blend, image_alpha)	
	}break;

}