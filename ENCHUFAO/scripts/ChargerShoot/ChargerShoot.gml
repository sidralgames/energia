// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ChargerShoot()
{
		var bullet = instance_create_layer(o_charger.x + lengthdir_x(10, o_charger.image_angle), o_charger.y + lengthdir_y(10, o_charger.image_angle),
		"Bullets", o_bulletCharger);
		if instance_exists(bullet)
		{
			bullet._hpush = lengthdir_x(5, o_charger.image_angle);
			bullet._vpush = lengthdir_y(5, o_charger.image_angle);
			bullet.image_angle = o_charger.image_angle;
			bullet.direction = o_charger.image_angle;
			global.shootsFired+=1;
		}

}