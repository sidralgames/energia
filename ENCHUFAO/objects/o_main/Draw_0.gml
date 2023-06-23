/// @description Insert description here
// You can write your code in this editor
draw_set_halign(fa_left)

azul = make_color_rgb(44,232, 245) 
rojo = make_color_rgb(228,59, 68) 
//draw_text(__view_get( e__VW.XView, 0 )+20,__view_get( e__VW.YView, 0 )+40,"ENERGY: " + string(round(global.energy)) + " / " + string(round(global.energyTotal)))

//draw_text(__view_get( e__VW.XView, 0 )+20,__view_get( e__VW.YView, 0 )+60,"HP: " + string(round(global.hp)) + " / " + string(round(global.hpMax)))

//draw_text(__view_get( e__VW.XView, 0 )+20,__view_get( e__VW.YView, 0 )+80,"SHIELDS: " + string(round(global.shields)) + " / " + string(round(global.shieldsMax)))

//draw_text(__view_get( e__VW.XView, 0 )+20,__view_get( e__VW.YView, 0 )+100,"AMMO: " + string(round(global.ammo)) + " / " + string(round(global.ammoMax)))

if (room != Sala_Inicio)
{
	draw_sprite_ext(s_energyBar_out,0,__view_get( e__VW.XView, 0 )+20,__view_get( e__VW.YView, 0 )+355,1,1,0,image_blend, image_alpha)
	draw_sprite_ext(s_energyBar_in,0,__view_get( e__VW.XView, 0 )+20,__view_get( e__VW.YView, 0 )+355,1,(global.energy/global.energyTotal),0,image_blend, image_alpha)

	draw_sprite_ext(s_hpBar_out,0,__view_get( e__VW.XView, 0 )+40,__view_get( e__VW.YView, 0 )+355,1,1,0,image_blend, image_alpha)
	draw_sprite_ext(s_hpBar_in,0,__view_get( e__VW.XView, 0 )+40,__view_get( e__VW.YView, 0 )+355,1,(global.hp/global.hpMax),0,image_blend, image_alpha)

	draw_sprite_ext(s_ammoBar_out30,0,__view_get( e__VW.XView, 0 )+600,__view_get( e__VW.YView, 0 )+355,1,1,0,image_blend, image_alpha)
	draw_sprite_ext(s_ammoBar_in,0,__view_get( e__VW.XView, 0 )+600,__view_get( e__VW.YView, 0 )+355,1,(global.ammo/global.ammoMax),0,image_blend, image_alpha)


	draw_sprite_ext(s_shieldBar_out,0,__view_get( e__VW.XView, 0 )+620,__view_get( e__VW.YView, 0 )+355,1,1,0,image_blend, image_alpha)
	draw_sprite_ext(s_shieldBar_in,0,__view_get( e__VW.XView, 0 )+620,__view_get( e__VW.YView, 0 )+355,1,(global.shields/global.shieldsMax),0,image_blend, image_alpha)
}

if (room = Sala_0)
{
draw_set_font(Font2)
draw_set_color(azul)
draw_text(__view_get( e__VW.XView, 0 )+20,__view_get( e__VW.YView, 0 )+21, "NIVEL: " + string(global.level))
draw_text(__view_get( e__VW.XView, 0 )+20,__view_get( e__VW.YView, 0 )+41, "PUNTOS: " + string(global.XPpoints))
draw_set_color(azul)
draw_text(__view_get( e__VW.XView, 0 )+20,__view_get( e__VW.YView, 0 )+20, "NIVEL: " + string(global.level))
draw_text(__view_get( e__VW.XView, 0 )+20,__view_get( e__VW.YView, 0 )+40, "PUNTOS: " + string(global.XPpoints))

//if instance_exists(o_waller)
//{
//draw_text(__view_get( e__VW.XView, 0 )+20,__view_get( e__VW.YView, 0 )+60, "LEVEL TYPE: " + string(o_waller.levelType))

//}

}
draw_set_color(c_white)
//if (room = Sala_0)
//{
//	if (speaking = false)
//	{
//		speaking = true;
//		instance_create(__view_get( e__VW.XView, 0 )+240,__view_get( e__VW.YView, 0 )+300,o_sezar)
//		ActivateSEZAR()
		
//	}
//	if instance_exists(oTextAlone)
//	{
//		draw_sprite_ext(s_sezar, image_index,__view_get( e__VW.XView, 0 )+110,__view_get( e__VW.YView, 0 )+310,1,1,0,image_blend,image_alpha)
//	}
	
//}
draw_set_font(Font1)
if (global.energy <=80)
{
	draw_set_color(rojo)
	draw_set_alpha(random_range(0.18,0.2))
	draw_rectangle(__view_get( e__VW.XView, 0 )+0,__view_get( e__VW.YView, 0 )+0,__view_get( e__VW.XView, 0 )+640,__view_get( e__VW.YView, 0 )+360,false)
	draw_set_color(c_white)
}

if (global.flashSuperShot)
{
	contSuperShotMain--;
	draw_set_color(c_white)
	draw_set_alpha(0.7)
	draw_rectangle(__view_get( e__VW.XView, 0 )+0,__view_get( e__VW.YView, 0 )+0,__view_get( e__VW.XView, 0 )+640,__view_get( e__VW.YView, 0 )+360,false)
	draw_set_color(c_white)
	draw_set_alpha(1)
	if (contSuperShotMain <=0)
	{
		global.flashSuperShot = false;
	}
}
draw_set_alpha(1)
