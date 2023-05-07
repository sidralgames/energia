/// @description Insert description here
// You can write your code in this editor
draw_set_halign(fa_left)
draw_set_font(Font1)
//draw_text(__view_get( e__VW.XView, 0 )+20,__view_get( e__VW.YView, 0 )+40,"ENERGY: " + string(round(global.energy)) + " / " + string(round(global.energyTotal)))

//draw_text(__view_get( e__VW.XView, 0 )+20,__view_get( e__VW.YView, 0 )+60,"HP: " + string(round(global.hp)) + " / " + string(round(global.hpMax)))

//draw_text(__view_get( e__VW.XView, 0 )+20,__view_get( e__VW.YView, 0 )+80,"SHIELDS: " + string(round(global.shields)) + " / " + string(round(global.shieldsMax)))

//draw_text(__view_get( e__VW.XView, 0 )+20,__view_get( e__VW.YView, 0 )+100,"AMMO: " + string(round(global.ammo)) + " / " + string(round(global.ammoMax)))


draw_sprite_ext(s_energyBar_out,0,__view_get( e__VW.XView, 0 )+20,__view_get( e__VW.YView, 0 )+355,1,1,0,image_blend, image_alpha)
draw_sprite_ext(s_energyBar_in,0,__view_get( e__VW.XView, 0 )+20,__view_get( e__VW.YView, 0 )+355,1,(global.energy/global.energyTotal),0,image_blend, image_alpha)

draw_sprite_ext(s_hpBar_out,0,__view_get( e__VW.XView, 0 )+40,__view_get( e__VW.YView, 0 )+355,1,1,0,image_blend, image_alpha)
draw_sprite_ext(s_hpBar_in,0,__view_get( e__VW.XView, 0 )+40,__view_get( e__VW.YView, 0 )+355,1,(global.hp/global.hpMax),0,image_blend, image_alpha)

draw_sprite_ext(s_ammoBar_out30,0,__view_get( e__VW.XView, 0 )+600,__view_get( e__VW.YView, 0 )+355,1,1,0,image_blend, image_alpha)
draw_sprite_ext(s_ammoBar_in,0,__view_get( e__VW.XView, 0 )+600,__view_get( e__VW.YView, 0 )+355,1,(global.ammo/global.ammoMax),0,image_blend, image_alpha)


draw_sprite_ext(s_shieldBar_out,0,__view_get( e__VW.XView, 0 )+620,__view_get( e__VW.YView, 0 )+355,1,1,0,image_blend, image_alpha)
draw_sprite_ext(s_shieldBar_in,0,__view_get( e__VW.XView, 0 )+620,__view_get( e__VW.YView, 0 )+355,1,(global.shields/global.shieldsMax),0,image_blend, image_alpha)


if (room = Sala_0)
{
	if (speaking = false)
	{
		speaking = true;
		instance_create(__view_get( e__VW.XView, 0 )+240,__view_get( e__VW.YView, 0 )+300,o_sezar)
		ActivateSEZAR()
		
	}
	if instance_exists(oTextAlone)
	{
		draw_sprite_ext(s_sezar, image_index,__view_get( e__VW.XView, 0 )+110,__view_get( e__VW.YView, 0 )+310,1,1,0,image_blend,image_alpha)
	}
	
}

