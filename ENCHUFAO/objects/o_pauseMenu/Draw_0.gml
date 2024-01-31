/// @description Insert description here
// You can write your code in this editor

orange = make_color_rgb(254,174, 52);



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
			draw_set_font(global.customFont14)
			draw_set_color(orange)
			draw_text(__view_get( e__VW.XView, 0 )+13,__view_get( e__VW.YView, 0 )+161+timesToDraw*15, upgrades.nameUpgrade)
			draw_set_color(global.yellow)
			draw_text(__view_get( e__VW.XView, 0 )+14,__view_get( e__VW.YView, 0 )+160+timesToDraw*15, upgrades.nameUpgrade)
		}
		else
		{
			draw_set_halign(fa_left)
			draw_set_font(global.customFont14)
			draw_set_color(orange)
			draw_text(__view_get( e__VW.XView, 0 )+13,__view_get( e__VW.YView, 0 )+161+timesToDraw*15, string(upgrades.nameUpgrade) +" x" + string(upgrades.times))
			draw_set_color(global.yellow)
			draw_text(__view_get( e__VW.XView, 0 )+14,__view_get( e__VW.YView, 0 )+160+timesToDraw*15, string(upgrades.nameUpgrade) +" x" + string(upgrades.times))
		}
	}
}

//draw_sprite_ext(s_pause,0, __view_get( e__VW.XView, 0 )+500,__view_get( e__VW.YView, 0 )+40,1,1,0,image_blend, image_alpha)

draw_sprite_ext(s_shipstats,0, __view_get( e__VW.XView, 0 )+65,__view_get( e__VW.YView, 0 )+130,1,1,0,image_blend, image_alpha)

for (var i = 0; i <= global.energyStat-1; i++)
{
	if (i < global.energyStatInitial)
	{
		draw_sprite(s_indivStat, 0,  __view_get( e__VW.XView, 0 )+ 125 +(i * 15),__view_get( e__VW.YView, 0 )+60)	
	}
	else
	{
		draw_sprite(s_indivStat, 1,  __view_get( e__VW.XView, 0 )+ 125 +(i * 15),__view_get( e__VW.YView, 0 )+60)	
	}
}

for (var i = 0; i <= global.speedStat-1; i++)
{
	if (i < global.speedStatInitial)
	{
		draw_sprite(s_indivStat, 0,  __view_get( e__VW.XView, 0 )+ 125 +(i * 15),__view_get( e__VW.YView, 0 )+80)	
	}
	else
	{
		draw_sprite(s_indivStat, 1,  __view_get( e__VW.XView, 0 )+ 125 +(i * 15),__view_get( e__VW.YView, 0 )+80)	
	}
}

for (var i = 0; i <= global.hpStat-1; i++)
{
	if (i < global.HPStatInitial)
	{
		draw_sprite(s_indivStat, 0,  __view_get( e__VW.XView, 0 )+ 125 +(i * 15),__view_get( e__VW.YView, 0 )+100)	
	}
	else
	{
		draw_sprite(s_indivStat, 1,  __view_get( e__VW.XView, 0 )+ 125 +(i * 15),__view_get( e__VW.YView, 0 )+100)
	}
}

for (var i = 0; i <= global.ammoStat-1; i++)
{
	if (i < global.ammoStatInitial)
	{
		draw_sprite(s_indivStat, 0,  __view_get( e__VW.XView, 0 )+ 125 +(i * 15),__view_get( e__VW.YView, 0 )+120)	
	}
	else
	{
		draw_sprite(s_indivStat, 1,  __view_get( e__VW.XView, 0 )+ 125 +(i * 15),__view_get( e__VW.YView, 0 )+120)	
	}
}

for (var i = 0; i <= global.laserStat-1; i++)
{
	if (i < global.laserStatInitial)
	{
		draw_sprite(s_indivStat, 0,  __view_get( e__VW.XView, 0 )+ 125 +(i * 15),__view_get( e__VW.YView, 0 )+140)	
	}
	else
	{
		draw_sprite(s_indivStat, 1,  __view_get( e__VW.XView, 0 )+ 125 +(i * 15),__view_get( e__VW.YView, 0 )+140)	
	}
}

for (var i = 0; i <= global.cableStat-1; i++)
{
	if (i < global.cableStatInitial)
	{
		draw_sprite(s_indivStat, 0,  __view_get( e__VW.XView, 0 )+ 125 +(i * 15),__view_get( e__VW.YView, 0 )+160)	
	}
	else
	{
		draw_sprite(s_indivStat, 1,  __view_get( e__VW.XView, 0 )+ 125 +(i * 15),__view_get( e__VW.YView, 0 )+160)	
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