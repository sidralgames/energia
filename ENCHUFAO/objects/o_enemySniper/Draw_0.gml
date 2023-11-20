/// @description Insert description here
// You can write your code in this editor












// Inherit the parent event
event_inherited();
if instance_exists(o_playerShip)
{
rojoosc= make_colour_rgb(255,0,68);

	if (aiming) 
	{
		draw_set_color(rojoosc)
		draw_set_alpha(0.6)
		draw_line_width( x+lengthdir_x(13,_angle), y+lengthdir_y(13, _angle), x+lengthdir_x(maxLenght,_angle), y+lengthdir_y(maxLenght, _angle),1);
		draw_set_color(c_white)
		draw_set_alpha(1)	
	}
	
}