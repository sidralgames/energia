// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function DrawStatsUpgrades()
{
	draw_sprite_ext(s_shipstats,0, __view_get( e__VW.XView, 0 )+75,__view_get( e__VW.YView, 0 )+160,1,1,0,image_blend, image_alpha)
	
	for (var i = 0; i <= global.energyStat-1; i++)
	{
		if (i < global.energyStatInitial)
		{
			draw_sprite(s_indivStat, 0,  __view_get( e__VW.XView, 0 )+ 135 +(i * 15),__view_get( e__VW.YView, 0 )+110)	
		}
		else
		{
			draw_sprite(s_indivStat, 1,  __view_get( e__VW.XView, 0 )+ 135 +(i * 15),__view_get( e__VW.YView, 0 )+110)	
		}
	}

	for (var i = 0; i <= global.speedStat-1; i++)
	{
		if (i < global.speedStatInitial)
		{
			draw_sprite(s_indivStat, 0,  __view_get( e__VW.XView, 0 )+ 135 +(i * 15),__view_get( e__VW.YView, 0 )+130)	
		}
		else
		{
			draw_sprite(s_indivStat, 1,  __view_get( e__VW.XView, 0 )+ 135 +(i * 15),__view_get( e__VW.YView, 0 )+130)	
		}
	}

	for (var i = 0; i <= global.hpStat-1; i++)
	{
		if (i < global.HPStatInitial)
		{
			draw_sprite(s_indivStat, 0,  __view_get( e__VW.XView, 0 )+ 135 +(i * 15),__view_get( e__VW.YView, 0 )+150)	
		}
		else
		{
			draw_sprite(s_indivStat, 1,  __view_get( e__VW.XView, 0 )+ 135 +(i * 15),__view_get( e__VW.YView, 0 )+150)
		}
	}

	for (var i = 0; i <= global.ammoStat-1; i++)
	{
		if (i < global.ammoStatInitial)
		{
			draw_sprite(s_indivStat, 0,  __view_get( e__VW.XView, 0 )+ 135 +(i * 15),__view_get( e__VW.YView, 0 )+170)	
		}
		else
		{
			draw_sprite(s_indivStat, 1,  __view_get( e__VW.XView, 0 )+ 135 +(i * 15),__view_get( e__VW.YView, 0 )+170)	
		}
	}

	for (var i = 0; i <= global.shieldStat-1; i++)
	{
		if (i < global.shieldStatInitial)
		{
			draw_sprite(s_indivStat, 0,  __view_get( e__VW.XView, 0 )+ 135 +(i * 15),__view_get( e__VW.YView, 0 )+190)	
		}
		else
		{
			draw_sprite(s_indivStat, 1,  __view_get( e__VW.XView, 0 )+ 135 +(i * 15),__view_get( e__VW.YView, 0 )+190)	
		}
	}

	for (var i = 0; i <= global.cableStat-1; i++)
	{
		if (i < global.cableStatInitial)
		{
			draw_sprite(s_indivStat, 0,  __view_get( e__VW.XView, 0 )+ 135 +(i * 15),__view_get( e__VW.YView, 0 )+210)	
		}
		else
		{
			draw_sprite(s_indivStat, 1,  __view_get( e__VW.XView, 0 )+ 135 +(i * 15),__view_get( e__VW.YView, 0 )+210)	
		}
	}
}