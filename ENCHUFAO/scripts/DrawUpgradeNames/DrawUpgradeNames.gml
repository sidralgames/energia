// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function DrawUpgradeNames()
{
	for (var i = 0; i<global.numberOfUpgradesPlayer; i++)
	{
		upgrades = ds_map_find_value(global.PlayerUpgradesList, i);
	
		if (upgrades.times > 0) && (upgrades.inStat == false)
		{
			timesToDraw +=1;	
	
			if (upgrades.times = 1)
			{
				draw_set_halign(fa_left)
				draw_set_font(customFont2)
				draw_set_color(orange)
				draw_text(__view_get( e__VW.XView, 0 )+26,__view_get( e__VW.YView, 0 )+201+timesToDraw*15, upgrades.nameUpgrade)
				draw_set_color(yellow)
				draw_text(__view_get( e__VW.XView, 0 )+27,__view_get( e__VW.YView, 0 )+200+timesToDraw*15, upgrades.nameUpgrade)
			}
			else
			{
				draw_set_halign(fa_left)
				draw_set_font(customFont2)
				draw_set_color(orange)
				draw_text(__view_get( e__VW.XView, 0 )+26,__view_get( e__VW.YView, 0 )+201+timesToDraw*15, string(upgrades.nameUpgrade) +" x" + string(upgrades.times))
				draw_set_color(yellow)
				draw_text(__view_get( e__VW.XView, 0 )+27,__view_get( e__VW.YView, 0 )+200+timesToDraw*15, string(upgrades.nameUpgrade) +" x" + string(upgrades.times))
			}
		}
	}
}