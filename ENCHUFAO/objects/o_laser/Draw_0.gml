/// @description Insert description here
// You can write your code in this editor

blanco= make_colour_rgb(255,255,255);
height = sin(random(1));

if (alarm[1] < 0)  && (colLaser)
{
	if (face = 0)
	{
		draw_set_color(global.brightRed);
		draw_set_alpha(choose(0,0,0,0.05))
		draw_line_width(x-1, y-7*image_yscale, x-1, y-16-long*image_yscale, (height * 2) + 3);
	}
	
	if (face = 1)
	{
		draw_set_alpha(choose(0,0,0,0.05))
		draw_set_color(global.brightRed);
		draw_line_width(x-7,y, x-16-long, y, (height * 2) + 3);
	}
}


if (laserActive) && (alarm[1] > 0)  && (colLaser)
{
	 if (face = 0)
	{
	draw_set_alpha(0.8+random(0.6))
	draw_circle_colour(x-1,y-7*image_yscale,(height*2)+6,global.brightRed, global.brightRed, false)
	draw_circle_colour(x-1,y-7*image_yscale,(height*1)+2,blanco, blanco, false)

	draw_circle_colour(x-1,y-16-long*image_yscale,(height*2)+6,global.brightRed, global.brightRed, false)
	draw_circle_colour(x-1,y-16-long*image_yscale,(height*1)+2,blanco, blanco, false)

	draw_set_color(global.brightRed);
	draw_line_width(x-1, y-7*image_yscale, x-1, y-16-long*image_yscale, (height * 4) + 7);

	draw_set_color(blanco);
	draw_line_width( x-1, y-7*image_yscale, x-1, y-16-long*image_yscale,(height * 1) + 2);
	draw_set_alpha(1)
	draw_self();
	}
	else if (face = 1)
	{
		draw_set_alpha(0.8+random(0.6))
		draw_circle_colour(x-7, y,(height*2)+6,global.brightRed, global.brightRed, false)
		draw_circle_colour(x-7, y,(height*1)+2,blanco, blanco, false)

		draw_circle_colour(x-16-long, y, (height*2)+6,global.brightRed, global.brightRed, false)
		draw_circle_colour(x-16-long, y, (height*1)+2,blanco, blanco, false)

		draw_set_color(global.brightRed);
		draw_line_width(x-7,y, x-16-long, y, (height * 4) + 7);

		draw_set_color(c_white);
		draw_line_width(x-7,y, x-16-long, y,(height * 1) + 2);
		draw_set_alpha(1)
		draw_self();	
	}
		
}
else
{
	draw_self();
}




