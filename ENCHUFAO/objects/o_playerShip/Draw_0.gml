/// @description Insert description here
// You can write your code in this editor

rojoosc= make_colour_rgb(255,0,68);
rojo= make_colour_rgb(228,59,69);
blanco= make_colour_rgb(255,255,255);
height = sin(random(1));
azul = make_color_rgb(44,232, 245)  
 
if (global.laser > 0)
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
	
		draw_circle_colour(x-1+lengthdir_x(maxLenght,_angle), y+lengthdir_y(maxLenght, _angle),(height*2)+blueWidht+global.laserWidth,azul, azul, false)
		draw_circle_colour(x-1+lengthdir_x(maxLenght,_angle), y+lengthdir_y(maxLenght, _angle),(height*1)+whiteWidht+global.laserWidth,blanco, blanco, false)
	
		draw_set_color(azul);
		draw_line_width(x-1+lengthdir_x(13,_angle), y+lengthdir_y(13, _angle), x+lengthdir_x(maxLenght,_angle), y+lengthdir_y(maxLenght, _angle), (height * 3) + blueWidht+global.laserWidth);
		//draw_set_color(rojo);
		//draw_line_width(x-1, y-7*image_yscale, x-1, y-16-long*image_yscale, (height * 3) + 4);
		draw_set_color(blanco);
		draw_line_width( x-1+lengthdir_x(13,_angle), y+lengthdir_y(13, _angle), x+lengthdir_x(maxLenght,_angle), y+lengthdir_y(maxLenght, _angle),(height * 1) + whiteWidht+global.laserWidth);
		draw_set_alpha(1)

	}
}

if instance_exists(inEnchufe)
{
	if (inEnchufe) && (!inEnchufe.enchufeActive)
	{
		if (radi > 17)
		{
			radi-=0.15;
		}
		else
		{
			radi = 21;
		}
		draw_set_color(c_white)
		draw_circle(inEnchufe.x, inEnchufe.y, radi+0.5, true)
		draw_circle(inEnchufe.x, inEnchufe.y, radi, true)
		draw_circle(inEnchufe.x, inEnchufe.y, 17, true)
		draw_circle(inEnchufe.x, inEnchufe.y, 17.3, true)
	}
}

if (connectedToShip) && (!pluggedShip)
{
	if (radi > 12)
	{
		radi-=0.15;
	}
	else
	{
		radi = 16;
	}
	
	draw_set_color(c_white)
	draw_circle(connectedToShip.x, connectedToShip.y, radi+0.5, true)
	draw_circle(connectedToShip.x, connectedToShip.y, radi, true)
	draw_circle(connectedToShip.x, connectedToShip.y, 12, true)
	draw_circle(connectedToShip.x, connectedToShip.y, 12.3, true)
}

draw_sprite_ext(global.spriteShip,image_index,x,y,1,1,_angle,image_blend,image_alpha)

if (global.ammo <= global.ammoMax/5)
{
	imageStrandedAmmo+=0.05;
	if (global.ammo >1)
	{
		draw_sprite_ext(s_ammoPlayer, imageStrandedAmmo, x-12, y-22, 1,1, 0, image_blend, image_alpha)	
	}
	else
	{
		draw_sprite_ext(s_ammoStranded, imageStrandedAmmo, x-12, y-22, 1,1, 0, image_blend, image_alpha)	
	}
}
if (global.hp <=1)
{
	imageStrandedHp+=0.05;

	draw_sprite_ext(s_hpPlayer, imageStrandedHp, x, y-22,  1,1, 0, image_blend, image_alpha)	
}
if (global.energy <= global.energyLow)
{
	imageStrandedEnergy+=0.05;
	if (global.energy >0)
	{
		draw_sprite_ext(s_energyPlayer, imageStrandedEnergy, x+12, y-22,  1,1, 0, image_blend, image_alpha)	
	}
	else
	{
		draw_sprite_ext(s_energyStranded, imageStrandedEnergy, x+12, y-22,  1,1, 0, image_blend, image_alpha)	
	}
}

//draw_text(x, y-50 ,string(contExploTile));