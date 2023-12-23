/// @description Insert description here
// You can write your code in this editor

Controls_Input()


	if instance_exists(follow)
	{
	
		var axisrh = gamepad_axis_value(0, gp_axisrh);
		var axisrv = gamepad_axis_value(0, gp_axisrv);
	
		if instance_exists(o_crosshair) 
		{
			x_point_to_move_camera_to= mean(follow.x,follow.x,follow.x,follow.x,follow.x+axisrh*160);
			y_point_to_move_camera_to= mean(follow.y,follow.y,follow.y,follow.y,follow.y+axisrv*160);
			x=lerp(x,x_point_to_move_camera_to,0.05);
			y=lerp(y,y_point_to_move_camera_to,0.05);
			
		}
		else
		{
			x_point_to_move_camera_to= follow.x;
			y_point_to_move_camera_to= follow.y;
			x=lerp(x,x_point_to_move_camera_to,0.05);
			y=lerp(y,y_point_to_move_camera_to,0.05);
		}
		
	}
	
	if (global.screenshakeIsOn) && (!instance_exists(o_gameOver))
	{
	//shake
		if (shakeRemain >0)
		{
			x+= random_range(-shakeRemain,shakeRemain);
			y+= random_range(-shakeRemain, shakeRemain);

			shakeRemain = lerp(shakeRemain, 0, 0.05)
			outRemain = lerp(outRemain, 0, 0.05)
			
		}
	
		if (shakeRemain <= 0.5)
		{
			
			shakeRemain = 0;
		}
		
		if (outRemain <= 0.5)
		{
			
			outRemain = 0;
		}
		
		
		camera_set_view_pos(view_camera[0],clamp(x-viewWidthHalf, -outRemain, room_width-(viewWidthHalf*2)+outRemain),clamp(y-viewHeightHalf, -outRemain, room_height-(viewHeightHalf*2)+outRemain))
	}
	else
	{
		camera_set_view_pos(view_camera[0],clamp(x-viewWidthHalf, 0, room_width-(viewWidthHalf*2)),clamp(y-viewHeightHalf, 0, room_height-(viewHeightHalf*2)))	
	}

	



