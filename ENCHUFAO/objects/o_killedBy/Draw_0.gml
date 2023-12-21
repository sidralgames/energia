/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if instance_exists(o_gameOver)
{
	image_alpha = o_gameOver.image_alpha;
}

draw_set_font(global.customFont16);
draw_set_halign(fa_center);

draw_set_color(global.lightBlue);
draw_text(__view_get( e__VW.XView, 0 )+319,__view_get( e__VW.YView, 0 )+211,"Killed by: ");

draw_set_color(c_white)
draw_text(__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+210,"Killed by: ");

draw_sprite_ext(global.spriteKilledBy, image_index, __view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+265,1,1, image_angle, image_blend, image_alpha)

if (image_alpha>=0.5)
{
	contParts --;
	if (contParts <=0)
	{
		part_particles_create(global.naveEnemy_Waiting_sys, __view_get( e__VW.XView, 0 )+315, __view_get( e__VW.YView, 0 )+265, global.naveEnemy_Waiting , 1)
		contParts = contPartsInitial;
	}
}




