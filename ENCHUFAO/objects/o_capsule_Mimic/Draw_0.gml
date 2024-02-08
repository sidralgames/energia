/// @description Insert description here
// You can write your code in this editor







draw_sprite_ext(sprite_index,image_index, x,y, scale, scale,image_angle, image_blend, image_alpha)

DrawStatusConditionEnemies(image_angle);


if instance_exists(o_playerShip)
{
	if (state == 1)
	{
		if (contClosed > 0)
		{
			charge+=1;
		}
		draw_sprite_ext(s_enchufeChargeHP_Out_Red,0,x-21,y-30,0.5,1,0,image_blend, image_alpha)
		draw_sprite_ext(s_enchufeChargeHP_In_Red,0,x-21,y-30,(charge/contClosedMax)/2,1,0,image_blend, image_alpha)
	}

}