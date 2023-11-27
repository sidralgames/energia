/// @description Insert description here
// You can write your code in this editor












// Inherit the parent event
event_inherited();
if instance_exists(o_playerShip)
{

red= make_colour_rgb(228,59,68);
red2= make_colour_rgb(255,0,68);

	if (contDisp < 50) 
	{
		draw_set_color(red2)
		draw_set_alpha(0.8)
		draw_line_width( x+lengthdir_x(8,_angle), y+lengthdir_y(8, _angle), x+lengthdir_x(maxLenght+15,_angle), y+lengthdir_y(maxLenght+15, _angle),1.5);
		draw_set_color(c_white)
		//draw_line_width( x+lengthdir_x(13,_angle), y+lengthdir_y(13, _angle), x+lengthdir_x(maxLenght+15,_angle), y+lengthdir_y(maxLenght+15, _angle),0.5);
		draw_set_alpha(1)	
	}
	
}