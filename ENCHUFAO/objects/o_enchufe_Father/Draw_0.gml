/// @description Insert description here
// You can write your code in this editor
rojoosc= make_colour_rgb(255,0,68);
rojo= make_colour_rgb(228,59,69);
rojo2= make_colour_rgb(158, 40, 53);

draw_sprite_ext(sprite_index,image_index, x,y, 1, 1,_angle, image_blend, image_alpha)

if instance_exists(o_playerShip)
{
	if (o_playerShip.plugged) && (o_playerShip.pluggedTimer >= 200) && (enchufeActive)
	{
		draw_sprite_ext(s_overcharging, 0, x, y-40,1,1.1,0,image_blend, image_alpha) 
		draw_sprite_ext(s_enchufeChargeHP_Out_Red,0,x-42,y-30,1,1.1,0,image_blend, image_alpha)
		draw_sprite_ext(s_enchufeChargeHP_In_Red,0,x-42,y-30,((o_playerShip.pluggedTimer-200)/100),1.1,0,image_blend, image_alpha)	
	
	}
}



