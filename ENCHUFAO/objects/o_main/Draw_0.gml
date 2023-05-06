/// @description Insert description here
// You can write your code in this editor
draw_set_halign(fa_left)
draw_text(__view_get( e__VW.XView, 0 )+20,__view_get( e__VW.YView, 0 )+40,"ENERGY: " + string(round(global.energy)) + " / " + string(round(global.energyTotal)))

draw_text(__view_get( e__VW.XView, 0 )+20,__view_get( e__VW.YView, 0 )+60,"HP: " + string(round(global.hp)) + " / " + string(round(global.hpMax)))

draw_text(__view_get( e__VW.XView, 0 )+20,__view_get( e__VW.YView, 0 )+80,"SHIELDS: " + string(round(global.shields)) + " / " + string(round(global.shieldsMax)))

draw_text(__view_get( e__VW.XView, 0 )+20,__view_get( e__VW.YView, 0 )+100,"AMMO: " + string(round(global.ammo)) + " / " + string(round(global.ammoMax)))


draw_sprite_ext(s_energyBar_out,0,__view_get( e__VW.XView, 0 )+620,__view_get( e__VW.YView, 0 )+320,1,1,0,image_blend, image_alpha)
draw_sprite_ext(s_energyBar_in,0,__view_get( e__VW.XView, 0 )+620,__view_get( e__VW.YView, 0 )+320,1,(global.energy/global.energyTotal),0,image_blend, image_alpha)




