/// @description Insert description here
// You can write your code in this editor
Controls_Input()
draw_self();
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
if (shipSelected = false)
{
	draw_sprite_ext(global.spriteShip,0,x,y+100,2,2,90,image_blend, image_alpha)
	draw_sprite_ext(s_arrows,0,x-70,y+100,1,1,0,image_blend, image_alpha)
	draw_sprite_ext(s_arrows,1,x+70,y+100,1,1,0,image_blend, image_alpha)
}

if (key_x) && (shipSelected = false)
{
	shipSelected = true;
	instance_create_layer(512,269, "Enchufes", o_enchufeInicio)
	instance_create_layer(112,272, "Enchufes" ,o_enchufeResetSelector)
	Stats._visible = false;
	player = instance_create_layer(x,y+100,"Player", o_playerShip)
	
}