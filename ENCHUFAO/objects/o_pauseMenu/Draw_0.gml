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
draw_text(__view_get( e__VW.XView, 0 )+120,__view_get( e__VW.YView, 0 )+81, "HOLA COOO")

