/// @description Insert description here
// You can write your code in this editor
Controls_Input();

PlayerState_Free();
Move();

if instance_exists(o_crosshair) 
{
	if (o_crosshair.alphaP > 0)
	{
		image_angle = point_direction(x,y,o_crosshair.x, o_crosshair.y)
	}
	else
	{
		image_angle = point_direction(o_crosshair.x, o_crosshair.y,x,y)
	}
}






	


