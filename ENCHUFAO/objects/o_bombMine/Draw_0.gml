/// @description Insert description here
// You can write your code in this editor


if (rangeV >= range)
{
	rangeV = 0;
}
draw_set_color(dGreen)
draw_set_alpha(0.06);
draw_circle(x,y,range/2,true);
draw_set_alpha(0.07);
draw_circle(x,y,range,true);
draw_circle(x,y,range-0.5,true);

if (exploding)
{
	draw_set_alpha(random_range(0.1, 0.125));
	rangeV+=3;
	draw_set_color(red2)
}
else
{
	draw_set_alpha(random_range(0.07, 0.075));
	rangeV+=1.1;
	draw_set_color(green)
}

draw_circle(x,y,rangeV,false);
draw_set_alpha(1);

draw_sprite_ext(sprite_index, image_index, x, y, scale, scale, _angle, image_blend, image_alpha)

if (flashAlpha>0)
{
	shader_set(shFlash)
	draw_sprite_ext(sprite_index,image_index,x,y,scale,scale,_angle,c_white,flashAlpha)
	shader_reset()
}
