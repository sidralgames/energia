/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

if (MyHitBox._hp <=0)
{
	draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,c_gray,image_alpha);
}
else
{
	draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha)
}
if instance_exists(o_playerShip)
{
	if  (charging) && (o_playerShip.pluggedTimer < 200)
	{
		if (charge <= 200)
		{
			charge+=1;
		}
		
		draw_sprite_ext(s_enchufeChargeHP_Out,0,x-42,y-30,1,1,0,image_blend, image_alpha)
		draw_sprite_ext(s_enchufeChargeHP_In,0,x-42,y-30,(charge/maxCharge),1,0,image_blend, image_alpha)
	}
}

//draw_text(x,y-30, string(Metal1))
//draw_text(x,y+30, string(Metal2))