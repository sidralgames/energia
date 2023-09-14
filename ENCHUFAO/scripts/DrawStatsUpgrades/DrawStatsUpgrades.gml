// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function DrawStatsUpgrades()
{
	draw_sprite_ext(s_statsAndUpgrades,0, __view_get( e__VW.XView, 0 )+130,__view_get( e__VW.YView, 0 )+110,1,1,0,image_blend, image_alpha)
	draw_sprite_ext(s_shipstatsPause,0, __view_get( e__VW.XView, 0 )+65,__view_get( e__VW.YView, 0 )+172,1,1,0,image_blend, image_alpha)
	
	for (var i = 0; i <= global.energyStat-1; i++)
	{
		if (i < global.energyStatInitial)
		{
			draw_sprite(s_indivStatPause, 0,  __view_get( e__VW.XView, 0 )+ 120 +(i * 10),__view_get( e__VW.YView, 0 )+135)	
		}
		else
		{
			draw_sprite(s_indivStatPause, 1,  __view_get( e__VW.XView, 0 )+ 120 +(i * 10),__view_get( e__VW.YView, 0 )+135)	
		}
	}

	for (var i = 0; i <= global.speedStat-1; i++)
	{
		if (i < global.speedStatInitial)
		{
			draw_sprite(s_indivStatPause, 0,  __view_get( e__VW.XView, 0 )+ 120 +(i * 10),__view_get( e__VW.YView, 0 )+150)	
		}
		else
		{
			draw_sprite(s_indivStatPause, 1,  __view_get( e__VW.XView, 0 )+ 120 +(i * 10),__view_get( e__VW.YView, 0 )+150)	
		}
	}

	for (var i = 0; i <= global.hpStat-1; i++)
	{
		if (i < global.HPStatInitial)
		{
			draw_sprite(s_indivStatPause, 0,  __view_get( e__VW.XView, 0 )+ 120 +(i * 10),__view_get( e__VW.YView, 0 )+165)	
		}
		else
		{
			draw_sprite(s_indivStatPause, 1,  __view_get( e__VW.XView, 0 )+ 120 +(i * 10),__view_get( e__VW.YView, 0 )+165)
		}
	}

	for (var i = 0; i <= global.ammoStat-1; i++)
	{
		if (i < global.ammoStatInitial)
		{
			draw_sprite(s_indivStatPause, 0,  __view_get( e__VW.XView, 0 )+ 120 +(i * 10),__view_get( e__VW.YView, 0 )+180)	
		}
		else
		{
			draw_sprite(s_indivStatPause, 1,  __view_get( e__VW.XView, 0 )+ 120 +(i * 10),__view_get( e__VW.YView, 0 )+180)	
		}
	}

	for (var i = 0; i <= global.laserStat-1; i++)
	{
		if (i < global.laserStatInitial)
		{
			draw_sprite(s_indivStatPause, 0,  __view_get( e__VW.XView, 0 )+ 120 +(i * 10),__view_get( e__VW.YView, 0 )+195)	
		}
		else
		{
			draw_sprite(s_indivStatPause, 1,  __view_get( e__VW.XView, 0 )+ 120 +(i * 10),__view_get( e__VW.YView, 0 )+195)	
		}
	}

	for (var i = 0; i <= global.cableStat-1; i++)
	{
		if (i < global.cableStatInitial)
		{
			draw_sprite(s_indivStatPause, 0,  __view_get( e__VW.XView, 0 )+ 120 +(i * 10),__view_get( e__VW.YView, 0 )+210)	
		}
		else
		{
			draw_sprite(s_indivStatPause, 1,  __view_get( e__VW.XView, 0 )+ 120 +(i * 10),__view_get( e__VW.YView, 0 )+210)	
		}
	}
}