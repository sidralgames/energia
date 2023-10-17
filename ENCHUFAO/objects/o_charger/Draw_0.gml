/// @description Insert description here
// You can write your code in this editor
draw_sprite_ext(sprite_index, image_index, x, y, scale, scale, image_angle, image_blend, image_alpha)

if (global.havePickedBouncingBullets)
{
	draw_sprite_ext(s_bouncingBulletsPicKUp, image_index, x+lengthdir_x(20, image_angle), y+lengthdir_y(20, image_angle), scale, scale, image_angle, image_blend, image_alpha)
}
else if (global.havePickedSmartBullets)
{
	draw_sprite_ext(s_smartBulletsPicKUp, image_index, x+lengthdir_x(20, image_angle), y+lengthdir_y(20, image_angle), scale, scale, image_angle, image_blend, image_alpha)
}
else if (global.havePickedPiercingBullets)
{
	draw_sprite_ext(s_piercingBulletsPicKUp, image_index, x+lengthdir_x(20, image_angle), y+lengthdir_y(20, image_angle), scale, scale, image_angle, image_blend, image_alpha)
}
else if (global.havePickedExploBullets)
{
	draw_sprite_ext(s_exploBulletsPickUp, image_index, x+lengthdir_x(20, image_angle), y+lengthdir_y(20, image_angle), scale, scale, image_angle, image_blend, image_alpha)
}
else if (global.havePickedSplitBullets)
{
	draw_sprite_ext(s_splitBulletsPickUp, image_index, x+lengthdir_x(20, image_angle), y+lengthdir_y(20, image_angle), scale, scale, image_angle, image_blend, image_alpha)
}
else if (global.havePickedPushingBullets)
{
	draw_sprite_ext(s_pushingBulletsPickup, image_index, x+lengthdir_x(20, image_angle), y+lengthdir_y(20, image_angle), scale, scale, image_angle, image_blend, image_alpha)
}
else if (global.havePickedBurningBullets)
{
	draw_sprite_ext(s_BurningBulletsPickUp, image_index, x+lengthdir_x(20, image_angle), y+lengthdir_y(20, image_angle), scale, scale, image_angle, image_blend, image_alpha)
}




