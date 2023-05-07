/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

if gamepad_is_connected(0)
{
	var axisrh = gamepad_axis_value(0, gp_axisrh); 
	var axisrv = gamepad_axis_value(0, gp_axisrv);

	if (abs(axisrh) >0.2 || abs(axisrv) >0.2)
	{
		alphaP=1
	}
	else
	{
		alphaP=0
	}


	if instance_exists(o_playerShip)
	{

		var axisrh = gamepad_axis_value(0, gp_axisrh); 
		var axisrv = gamepad_axis_value(0, gp_axisrv);
	
		if (abs(axisrh) >0.2 || abs(axisrv) >0.2)
		{
			x_point_to_move_camera_to= mean(o_playerShip.x,o_playerShip.x,o_playerShip.x,o_playerShip.x+axisrh*400);
			y_point_to_move_camera_to= mean(o_playerShip.y,o_playerShip.y,o_playerShip.y, o_playerShip.y+axisrv*400); 

			x=lerp(x,x_point_to_move_camera_to,0.15);
			y=lerp(y,y_point_to_move_camera_to,0.15);
		}
		else
		{
			alphaP=0;
			x = o_playerShip.x
			y = o_playerShip.y
		}
	
		if x < __view_get( e__VW.XView, 0 )+10{
			x= __view_get( e__VW.XView, 0 )+10;
		}
		if x > __view_get( e__VW.XView, 0 )+630
		{
			x= __view_get( e__VW.XView, 0 )+630;
		}
		if y < __view_get( e__VW.YView, 0 )+10{
			y= __view_get( e__VW.YView, 0 )+10;
		}
		if y > __view_get( e__VW.YView, 0 )+350{
	
			y= __view_get( e__VW.YView, 0 )+350;
		}

		draw_sprite_ext(s_crosshair,image_index,x,y,1,1,image_angle,image_blend,alphaP);
	
	}

}
else
{
	if instance_exists(o_playerShip)
	{
		x=mouse_x;
		y=mouse_y;
	
		if (point_distance(x,y,o_playerShip.x, o_playerShip.y)) > 30
		{
			alphaP = 1;
		}
		else
		{
			alphaP = 0;
		}
	
		draw_sprite_ext(s_crosshair,image_index,x,y,1,1,image_angle,image_blend,alphaP);
	}
}