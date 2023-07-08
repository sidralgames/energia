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
draw_set_halign(fa_right)
draw_set_font(Font2)
draw_set_color(c_white)
draw_text(__view_get( e__VW.XView, 0 )+630,__view_get( e__VW.YView, 0 )+21, "Level " + string(global.level))
draw_text(__view_get( e__VW.XView, 0 )+630,__view_get( e__VW.YView, 0 )+41, "Score: " + string(global.XPpoints))
//draw_text(__view_get( e__VW.XView, 0 )+20,__view_get( e__VW.YView, 0 )+61, "Enemies: " + string(global.enemies))
//draw_text(__view_get( e__VW.XView, 0 )+20,__view_get( e__VW.YView, 0 )+81, "Enemies max: " + string(global.enemiesMax))
draw_set_color(azul)
draw_text(__view_get( e__VW.XView, 0 )+630,__view_get( e__VW.YView, 0 )+20, "Level " + string(global.level))
draw_text(__view_get( e__VW.XView, 0 )+630,__view_get( e__VW.YView, 0 )+40, "Score: " + string(global.XPpoints))

//if instance_exists(o_waller)
//{
//draw_text(__view_get( e__VW.XView, 0 )+20,__view_get( e__VW.YView, 0 )+60, "LEVEL TYPE: " + string(o_waller.levelType))

//}

}
if instance_exists(o_playerShip) && (room != Sala_Inicio)
{
	for (var i=0; i< global.bombAmmo; i++)
	{
		draw_sprite_ext(s_bomb, 0, __view_get( e__VW.XView, 0 )+25+ (i*19),__view_get( e__VW.YView, 0 )+45, 1,1,0,image_blend, image_alpha)
	}
	for (var t=0; t< global.PETAAmmo; t++)
	{
		draw_sprite_ext(s_PETApickUp, 0, __view_get( e__VW.XView, 0 )+25+ (t*16),__view_get( e__VW.YView, 0 )+65, 0.8,0.8,0,image_blend, image_alpha)
	}
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
	if global.PETAAmmo > 0
	{
		if (alarm[0] <30)
		{
			draw_set_halign(fa_center)
			draw_set_font(Font2)
			draw_set_color(c_white)
			draw_text(__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+301, "L3 + R3" )
			draw_text(__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+326, "TRHOW P.E.T.A")

			draw_set_color(azul)
			draw_text(__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+300, "L3 + R3" )
			draw_text(__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+325, "TRHOW P.E.T.A")
		}
	
		if (alarm[0] <= 0)
		{
			alarm[0] = 40;	
		}
	}
	draw_set_color(rojo)
	draw_set_alpha(0.05)
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


if (room = Sala_FirstBoss) && (global.BossBreach_awaken = true) && !instance_exists(o_BreachBossBanner)
{
	draw_sprite_ext(s_bossName_Breacher, 0,__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+20, 1,1,image_angle, image_blend, image_alpha)
	draw_sprite_ext(s_bossHealthBar_Out, 0,__view_get( e__VW.XView, 0 )+230,__view_get( e__VW.YView, 0 )+35, 1,1,image_angle, image_blend, image_alpha)
	draw_sprite_ext(s_bossHealthBar_In, 0,__view_get( e__VW.XView, 0 )+233,__view_get( e__VW.YView, 0 )+35, global.BossBreach_HP/global.BossBreach_HPMax, 1,image_angle, image_blend, image_alpha)
	draw_sprite_ext(s_bossHealthBar_OutFront, 0,__view_get( e__VW.XView, 0 )+230,__view_get( e__VW.YView, 0 )+35, 1,1,image_angle, image_blend, image_alpha)
}