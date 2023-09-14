// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function DrawLaserPlayer(argument0)
{

if (key_laser) && !(laserActive)
	{
		blueW =  lerp(blueW, 1, 0.05*global.relativeSpeed);
		whiteW =  lerp(whiteW, 1, 0.05*global.relativeSpeed);
		draw_set_alpha(0.2+random(0.5))
		draw_circle_colour(x-1+lengthdir_x(10,_angle), y+lengthdir_y(10, _angle),(height*2)+blueW+global.laserWidth,azul, azul, false)
		draw_circle_colour(x-1+lengthdir_x(10,_angle), y+lengthdir_y(10, _angle),(height*1)+whiteW+global.laserWidth,blanco, blanco, false)
	}
	if (laserActive) 
	{
		blueWidht = lerp(blueWidht, 4, 0.1*global.relativeSpeed);
		whiteWidht =  lerp(whiteWidht, 1, 0.2*global.relativeSpeed);
	
		draw_set_alpha(0.8+random(0.6))
		draw_circle_colour(x-1+lengthdir_x(10,_angle), y+lengthdir_y(10, _angle),(height*2)+blueWidht+0.5+global.laserWidth,azul, azul, false)
		draw_circle_colour(x-1+lengthdir_x(10,_angle), y+lengthdir_y(10, _angle),(height*1)+whiteWidht+global.laserWidth,blanco, blanco, false)
	
		draw_circle_colour(x-1+lengthdir_x(maxLenght,argument0), y+lengthdir_y(maxLenght, argument0),(height*2)+blueWidht+global.laserWidth,azul, azul, false)
		draw_circle_colour(x-1+lengthdir_x(maxLenght,argument0), y+lengthdir_y(maxLenght, argument0),(height*1)+whiteWidht+global.laserWidth,blanco, blanco, false)
	
		draw_set_color(azul);
		draw_line_width(x-1+lengthdir_x(13,_angle), y+lengthdir_y(13, _angle), x+lengthdir_x(maxLenght,argument0), y+lengthdir_y(maxLenght, argument0), (height * 3) + blueWidht+global.laserWidth);
		//draw_set_color(rojo);
		//draw_line_width(x-1, y-7*image_yscale, x-1, y-16-long*image_yscale, (height * 3) + 4);
		draw_set_color(blanco);
		draw_line_width( x-1+lengthdir_x(13,_angle), y+lengthdir_y(13, _angle), x+lengthdir_x(maxLenght,argument0), y+lengthdir_y(maxLenght, argument0),(height * 1) + whiteWidht+global.laserWidth);
		draw_set_alpha(1)

	}
}