/// @description Insert description here
// You can write your code in this editor

if (drawflash=true) && (scale > 0.55)
{
	draw_set_alpha(0.2)
	draw_set_color(c_white)
	draw_rectangle(__view_get( e__VW.XView, 0 )+0,__view_get( e__VW.YView, 0 )+0,__view_get( e__VW.XView, 0 )+640,__view_get( e__VW.YView, 0 )+360,false)
	
}
draw_sprite_ext(sprite_index,image_index, x,y,scale,scale,0,image_blend, image_alpha);



