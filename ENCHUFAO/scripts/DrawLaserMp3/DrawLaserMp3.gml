// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function DrawLaserMp3(argument0)
{
	if (superGun.enchufeActive) && (superGun.image_index > 15)
	{
		height = sin(random(1));
		colorLaser = make_color_rgb(255,0,68);
	
		if (superGun.contToShoot >0 )
		{
			blueW =  lerp(blueW, outRad, 0.05*global.relativeSpeed);
			whiteW =  lerp(whiteW, inRad, 0.05*global.relativeSpeed);
			draw_set_alpha(0.3+random(0.5))
			draw_circle_colour(x-1+lengthdir_x(10,argument0), y-1+lengthdir_y(10, argument0),(height*2)+blueW+global.laserWidth+global.amplifyPowerLaser,colorLaser, colorLaser, false)
			draw_circle_colour(x-1+lengthdir_x(10,argument0), y-1+lengthdir_y(10, argument0),(height*1)+whiteW+global.laserWidth+global.amplifyPowerLaser,c_white, c_white, false)
		}
		if (superGun.contToShoot <= 0) 
		{
			if (drawflash=true)
			{
				draw_set_alpha(0.1)
				draw_set_color(c_white)
				draw_rectangle(__view_get( e__VW.XView, 0 )+0,__view_get( e__VW.YView, 0 )+0,__view_get( e__VW.XView, 0 )+640,__view_get( e__VW.YView, 0 )+360,false)
				drawflash=false;
			}
			blueWidht = lerp(blueWidht,mp3laserWidth1, 0.1*global.relativeSpeed);
			whiteWidht =  lerp(whiteWidht, mp3laserWidth2, 0.2*global.relativeSpeed);
	
			draw_set_alpha(0.8+random(0.6))
			draw_circle_colour(x+lengthdir_x(13,argument0), y-1+lengthdir_y(10, argument0),(height*2)+outRad+0.5+global.laserWidth+global.amplifyPowerLaser,colorLaser, colorLaser, false)
			draw_circle_colour(x+lengthdir_x(13,argument0), y-1+lengthdir_y(10, argument0),(height*1)+inRad+global.laserWidth+global.amplifyPowerLaser,c_white, c_white, false)
	
			draw_circle_colour(x+lengthdir_x(maxLenght,argument0), y-1+lengthdir_y(maxLenght, argument0),(height*2)+outRad+1.5+global.laserWidth+global.amplifyPowerLaser,colorLaser, colorLaser, false)
			draw_circle_colour(x+lengthdir_x(maxLenght,argument0), y-1+lengthdir_y(maxLenght, argument0),(height*1)+inRad+global.laserWidth+global.amplifyPowerLaser,c_white, c_white, false)
	
			draw_set_color(colorLaser);
			draw_set_alpha(0.2+random(0.4))
			draw_line_width( x+lengthdir_x(13,argument0), y-1+lengthdir_y(13, argument0), x+lengthdir_x(maxLenght,argument0), y-1+lengthdir_y(maxLenght, argument0),(height * 5) + blueWidht+3+global.laserWidth+global.amplifyPowerLaser);
			draw_set_alpha(0.8+random(0.6))
			draw_line_width(x+lengthdir_x(13,argument0), y-1+lengthdir_y(13, argument0), x+lengthdir_x(maxLenght,argument0), y-1+lengthdir_y(maxLenght, argument0), (height * 3) + blueWidht+global.laserWidth+global.amplifyPowerLaser);
		
			draw_set_color(c_white);
			draw_line_width( x+lengthdir_x(13,argument0), y-1+lengthdir_y(13, argument0), x+lengthdir_x(maxLenght,argument0), y-1+lengthdir_y(maxLenght, argument0),(height * 1) + whiteWidht+global.laserWidth+global.amplifyPowerLaser);
			draw_set_alpha(1)
		}
	}
}