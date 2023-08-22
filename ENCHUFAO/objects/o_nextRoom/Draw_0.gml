/// @description Insert description here
// You can write your code in this editor
Controls_Input()
if (!instance_exists(o_menuAchievements))
{
	draw_self();
}
draw_set_halign(fa_center)
//if gamepad_is_connected(0)
//{
//	draw_text(__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+150,"X para enchufarte/desenchufarte")
//	draw_text(__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+180,"Enchufate para empezar")
//}
//else
//{
//	draw_text(__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+150,"Boton Raton Derecho para enchufarte/desenchufarte")
//	draw_text(__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+180,"Enchufate para empezar")
//}
if instance_exists(o_shipSelector)
{
	ship = ds_map_find_value(global.shipList,o_shipSelector.selected);
}

if (ship.unlocked == 1)
{
	spriteToShow = ship.sprite;
}
else
{
	spriteToShow = ship.spriteLocked;
}

if (shipSelected = false) && (canSelectShip)
{
	draw_sprite_ext(spriteToShow,0,x,y+100,2,2,90,image_blend, image_alpha)
	draw_sprite_ext(s_arrows,0,x-70,y+100,1,1,0,image_blend, image_alpha)
	draw_sprite_ext(s_arrows,1,x+70,y+100,1,1,0,image_blend, image_alpha)
}

if (canSelectShip) && (alarm[0] < 60)
{
	if (key_x) && (shipSelected = false) && (ship.unlocked == 1)
	{
		shipSelected = true;
		instance_create_layer(512,269, "Enchufes", o_enchufeInicio)
		instance_create_layer(112,272, "Enchufes" ,o_enchufeResetSelector)
		instance_create_layer(30,40, "Enchufes" ,o_enchufeDeleteData)
		Stats._visible = false;
		player = instance_create_layer(x,y+100,"Player", o_playerShip)
		global.ammoStatInitial = global.ammoStat;
		global.energyStatInitial = global.energyStat;
		global.HPStatInitial = global.hpStat;
		global.speedStatInitial = global.speedStat;
		global.cableStatInitial = global.cableStat;
		global.shieldStatInitial = global.shieldStat;
	
	}
}