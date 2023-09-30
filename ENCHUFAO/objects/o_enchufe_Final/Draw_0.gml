/// @description Insert description here
// You can write your code in this editor






// Inherit the parent event
event_inherited();

if (room = Sala_0) && (abierto = false)
{
	
	if (global.pluggedInEnergy)
	{
		draw_sprite_ext(s_bombillas, 0,x, y, 1,1,_angle,image_blend, image_alpha)
	}
	if (global.pluggedInAmmo)
	{
		draw_sprite_ext(s_bombillas, 1,x, y, 1,1,_angle,image_blend, image_alpha)
	}
	if (global.pluggedInLaser)
	{
		draw_sprite_ext(s_bombillas, 2,x, y, 1,1,_angle,image_blend, image_alpha)
	}
	if (global.pluggedInHp)
	{
		draw_sprite_ext(s_bombillas, 3,x, y, 1,1,_angle,image_blend, image_alpha)
	}
}