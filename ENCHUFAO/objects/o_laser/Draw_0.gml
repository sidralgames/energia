/// @description Insert description here
// You can write your code in this editor
rojoosc= make_colour_rgb(255,0,68);
rojo= make_colour_rgb(228,59,69);
blanco= make_colour_rgb(255,255,255);
height = sin(random(1));
 
if (laserActive) && (alarm[1] > 0)
{
	draw_set_alpha(0.8+random(0.6))
	draw_circle_colour(x-1,y-7*image_yscale,(height*2)+6,rojoosc, rojoosc, false)
	draw_circle_colour(x-1,y-7*image_yscale,(height*1)+2,blanco, blanco, false)

	draw_circle_colour(x-1,y-16-long*image_yscale,(height*2)+6,rojoosc, rojoosc, false)
	draw_circle_colour(x-1,y-16-long*image_yscale,(height*1)+2,blanco, blanco, false)

	draw_set_color(rojoosc);
	draw_line_width(x-1, y-7*image_yscale, x-1, y-16-long*image_yscale, (height * 4) + 7);
	//draw_set_color(rojo);
	//draw_line_width(x-1, y-7*image_yscale, x-1, y-16-long*image_yscale, (height * 3) + 4);
	draw_set_color(blanco);
	draw_line_width( x-1, y-7*image_yscale, x-1, y-16-long*image_yscale,(height * 1) + 2);
	draw_set_alpha(1)
	draw_self();
}
else
{
	draw_self();
}




