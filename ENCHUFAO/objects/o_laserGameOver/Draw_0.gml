/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

	height = sin(random(1));

draw_set_alpha(0.8+random(0.6))
draw_circle_colour(x-7, y,(height*2)+6,global.brightRed, global.brightRed, false)
draw_circle_colour(x-7, y,(height*1)+2,c_white, c_white, false)

draw_circle_colour(x-16-140, y, (height*2)+6,global.brightRed, global.brightRed, false)
draw_circle_colour(x-16-140, y, (height*1)+2,c_white, c_white, false)

draw_set_color(global.brightRed);
draw_line_width(x-7,y, x-16-140, y, (height * 4) + 7);
draw_set_color(c_white);
draw_line_width(x-7,y, x-16-140, y,(height * 1) + 2);
draw_set_alpha(1)



