/// @description Insert description here
// You can write your code in this editor
azul = make_color_rgb(44,232, 245);

for (var i = 0; i<global.numberOfUpgradesPlayer-1; i++)
{
	upgrades = ds_map_find_value(global.PlayerUpgradesList, i)
	if (upgrades.times > 0)
	{
		draw_set_halign(fa_center)
		draw_set_font(Font2)
		draw_set_color(c_white)
		draw_text(__view_get( e__VW.XView, 0 )+120,__view_get( e__VW.YView, 0 )+81+i*20, upgrades.nameUpgrade)

		draw_set_color(azul)
		draw_text(__view_get( e__VW.XView, 0 )+120,__view_get( e__VW.YView, 0 )+80+i*20, upgrades.nameUpgrade)
	}
}


draw_sprite_ext(s_pauseBackground,0, __view_get( e__VW.XView, 0 )+0,__view_get( e__VW.YView, 0 )+0,1,1,0,image_blend, image_alpha)
draw_sprite_ext(s_shipstats,0, __view_get( e__VW.XView, 0 )+120,__view_get( e__VW.YView, 0 )+250,1,1,0,image_blend, image_alpha)

for (var i = 0; i <= global.energyStat-1; i++)
{
	draw_sprite(s_indivStat, 0,  __view_get( e__VW.XView, 0 )+ 180 +(i * 15),__view_get( e__VW.YView, 0 )+200)	
}

for (var i = 0; i <= global.speedStat-1; i++)
{
	draw_sprite(s_indivStat, 0,  __view_get( e__VW.XView, 0 )+ 180 +(i * 15),__view_get( e__VW.YView, 0 )+220)	
}

for (var i = 0; i <= global.hpStat-1; i++)
{
	draw_sprite(s_indivStat, 0,  __view_get( e__VW.XView, 0 )+ 180 +(i * 15),__view_get( e__VW.YView, 0 )+240)	
}

for (var i = 0; i <= global.ammoStat-1; i++)
{
	draw_sprite(s_indivStat, 0,  __view_get( e__VW.XView, 0 )+ 180 +(i * 15),__view_get( e__VW.YView, 0 )+260)	
}

for (var i = 0; i <= global.shieldStat-1; i++)
{
	draw_sprite(s_indivStat, 0,  __view_get( e__VW.XView, 0 )+ 180 +(i * 15),__view_get( e__VW.YView, 0 )+280)	
}

for (var i = 0; i <= global.cableStat-1; i++)
{
	draw_sprite(s_indivStat, 0,  __view_get( e__VW.XView, 0 )+ 180 +(i * 15),__view_get( e__VW.YView, 0 )+300)	
}