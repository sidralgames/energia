/// @description Insert description here
// You can write your code in this editor
azul = make_color_rgb(44,232, 245);


draw_sprite_ext(s_pauseBackground,0, __view_get( e__VW.XView, 0 )+0,__view_get( e__VW.YView, 0 )+0,1,1,0,image_blend, image_alpha)

for (var i = 0; i<global.numberOfUpgradesPlayer; i++)
{
	upgrades = ds_map_find_value(global.PlayerUpgradesList, i)
	if (upgrades.times > 0) && (upgrades.inStat == false)
	{
		if (upgrades.times = 1)
		{
			draw_set_halign(fa_left)
			draw_set_font(Font2)
			draw_set_color(azul)
			draw_text(__view_get( e__VW.XView, 0 )+15,__view_get( e__VW.YView, 0 )+220+i*17, upgrades.nameUpgrade)
			draw_text(__view_get( e__VW.XView, 0 )+16,__view_get( e__VW.YView, 0 )+221+i*17, upgrades.nameUpgrade)
			draw_set_color(c_white)
			draw_text(__view_get( e__VW.XView, 0 )+16,__view_get( e__VW.YView, 0 )+220+i*17, upgrades.nameUpgrade)
		}
		else
		{
			draw_set_halign(fa_left)
			draw_set_font(Font2)
			draw_set_color(azul)
			draw_text(__view_get( e__VW.XView, 0 )+19,__view_get( e__VW.YView, 0 )+210+i*17, upgrades.nameUpgrade)/////Como?? " x " + upgrades.times??
			draw_text(__view_get( e__VW.XView, 0 )+20,__view_get( e__VW.YView, 0 )+211+i*17, upgrades.nameUpgrade)
			draw_set_color(c_white)
			draw_text(__view_get( e__VW.XView, 0 )+20,__view_get( e__VW.YView, 0 )+210+i*17, upgrades.nameUpgrade)
		}
	}
}

draw_sprite_ext(s_pause,0, __view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+50,1,1,0,image_blend, image_alpha)


draw_sprite_ext(s_shipstats,0, __view_get( e__VW.XView, 0 )+60,__view_get( e__VW.YView, 0 )+150,1,1,0,image_blend, image_alpha)

for (var i = 0; i <= global.energyStat-1; i++)
{
	if (i < global.energyStatInitial)
	{
		draw_sprite(s_indivStat, 0,  __view_get( e__VW.XView, 0 )+ 120 +(i * 15),__view_get( e__VW.YView, 0 )+100)	
	}
	else
	{
		draw_sprite(s_indivStat, 1,  __view_get( e__VW.XView, 0 )+ 120 +(i * 15),__view_get( e__VW.YView, 0 )+100)	
	}
}

for (var i = 0; i <= global.speedStat-1; i++)
{
	if (i < global.speedStatInitial)
	{
		draw_sprite(s_indivStat, 0,  __view_get( e__VW.XView, 0 )+ 120 +(i * 15),__view_get( e__VW.YView, 0 )+120)	
	}
	else
	{
		draw_sprite(s_indivStat, 1,  __view_get( e__VW.XView, 0 )+ 120 +(i * 15),__view_get( e__VW.YView, 0 )+120)	
	}
}

for (var i = 0; i <= global.hpStat-1; i++)
{
	if (i < global.HPStatInitial)
	{
		draw_sprite(s_indivStat, 0,  __view_get( e__VW.XView, 0 )+ 120 +(i * 15),__view_get( e__VW.YView, 0 )+140)	
	}
	else
	{
		draw_sprite(s_indivStat, 1,  __view_get( e__VW.XView, 0 )+ 120 +(i * 15),__view_get( e__VW.YView, 0 )+140)
	}
}

for (var i = 0; i <= global.ammoStat-1; i++)
{
	if (i < global.ammoStatInitial)
	{
		draw_sprite(s_indivStat, 0,  __view_get( e__VW.XView, 0 )+ 120 +(i * 15),__view_get( e__VW.YView, 0 )+160)	
	}
	else
	{
		draw_sprite(s_indivStat, 1,  __view_get( e__VW.XView, 0 )+ 120 +(i * 15),__view_get( e__VW.YView, 0 )+160)	
	}
}

for (var i = 0; i <= global.shieldStat-1; i++)
{
	if (i < global.shieldStatInitial)
	{
		draw_sprite(s_indivStat, 0,  __view_get( e__VW.XView, 0 )+ 120 +(i * 15),__view_get( e__VW.YView, 0 )+180)	
	}
	else
	{
		draw_sprite(s_indivStat, 1,  __view_get( e__VW.XView, 0 )+ 120 +(i * 15),__view_get( e__VW.YView, 0 )+180)	
	}
}

for (var i = 0; i <= global.cableStat-1; i++)
{
	if (i < global.cableStatInitial)
	{
		draw_sprite(s_indivStat, 0,  __view_get( e__VW.XView, 0 )+ 120 +(i * 15),__view_get( e__VW.YView, 0 )+200)	
	}
	else
	{
		draw_sprite(s_indivStat, 1,  __view_get( e__VW.XView, 0 )+ 120 +(i * 15),__view_get( e__VW.YView, 0 )+200)	
	}
}