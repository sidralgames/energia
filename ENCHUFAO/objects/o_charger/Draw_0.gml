/// @description Insert description here
// You can write your code in this editor
if instance_exists(o_playerShip)
{
	if (o_playerShip.plugged == false)
	{
		draw_sprite_ext(sprite_index, image_index, x, y, scale, scale, image_angle, image_blend, image_alpha)
	}
	else
	{
		with (o_playerShip)
		{
			if (enchufe.IsEnchufeBoss)
			{
				xToPlug = enchufe.x-lengthdir_x(30,enchufe.image_angle)
				yToPlug = enchufe.y-lengthdir_y(30,enchufe.image_angle)
				draw_sprite_ext(s_chargerPlugged, 0, xToPlug, yToPlug, o_charger.scale, o_charger.scale, enchufe.image_angle-90, image_blend, image_alpha)
			}
			else if (enchufe.IsEnchufeMP3CHILL)
			{
				draw_sprite_ext(s_chargerPlugged, 0, global.xToPlug, global.yToPlug, o_charger.scale, o_charger.scale, enchufe.image_angle, image_blend, image_alpha)
			}
			else if (enchufe.IsEnchufeCapsule)
			{
				if (enchufe.IsEnchufeCapsuleSuper)
				{
					xToPlug = enchufe.x+lengthdir_x(25,enchufe.image_angle-90)
					yToPlug = enchufe.y+lengthdir_y(25,enchufe.image_angle-90)
					draw_sprite_ext(s_chargerPlugged, 0, xToPlug, yToPlug, o_charger.scale, o_charger.scale, enchufe.image_angle-90, image_blend, image_alpha)
				}
				else
				{
					xToPlug = enchufe.x+lengthdir_x(10,enchufe.image_angle-90)
					yToPlug = enchufe.y+lengthdir_y(10,enchufe.image_angle-90)
					draw_sprite_ext(s_chargerPlugged, 0, xToPlug, yToPlug, o_charger.scale, o_charger.scale, enchufe.image_angle-90, image_blend, image_alpha)
				}
			}
			else
			{
				draw_sprite_ext(s_chargerPlugged, 0, enchufe.x, enchufe.y, o_charger.scale, o_charger.scale, enchufe._angle-90, image_blend, image_alpha)
			}
		}
	}
}
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
else if (global.havePickedElectroBullets)
{
	draw_sprite_ext(s_electroBulletsPickUp, image_index, x+lengthdir_x(20, image_angle), y+lengthdir_y(20, image_angle), scale, scale, image_angle, image_blend, image_alpha)
}
else if (global.havePickedGhostBullets)
{
	draw_sprite_ext(s_ghostBulletsPickUp, image_index, x+lengthdir_x(20, image_angle), y+lengthdir_y(20, image_angle), scale, scale, image_angle, image_blend, image_alpha)
}
else if (global.havePickedIceBullets)
{
	draw_sprite_ext(s_iceBulletsPickUp, image_index, x+lengthdir_x(20, image_angle), y+lengthdir_y(20, image_angle), scale, scale, image_angle, image_blend, image_alpha)
}





