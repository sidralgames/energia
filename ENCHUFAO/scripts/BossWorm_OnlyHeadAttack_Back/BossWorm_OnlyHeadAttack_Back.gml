// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function BossWorm_OnlyHeadAttack_Back()
{
	contDisp--;

	if (contDisp <= 0) 
	{
		var bullet = instance_create_layer(x - lengthdir_x(25, _angle-180), y - lengthdir_y(25, _angle-180),
		"EnemiesHUE", o_bulletMouth_Free);
			
		if instance_exists(bullet)
		{
			bullet.bulletSpeed = bulletVelo;
			bullet.image_angle = _angle-180;
			bullet.direction = _angle-180;
		}
		
		var bullet2 = instance_create_layer(x - lengthdir_x(15, _angle-180), y - lengthdir_y(15, _angle-180),
		"EnemiesHUE", o_bulletMouth_Free);
			
		if instance_exists(bullet2)
		{
			bullet2.bulletSpeed = bulletVelo;
			bullet2.image_angle = _angle-offBullet-180;
			bullet2.direction = _angle-offBullet-180;
		}
	
		var bullet3 = instance_create_layer(x - lengthdir_x(15, _angle-180), y - lengthdir_y(15, _angle-180),
		"EnemiesHUE", o_bulletMouth_Free);
		if instance_exists(bullet3)
		{
			bullet3.bulletSpeed = bulletVelo;
			bullet3.image_angle = _angle+offBullet-180;
			bullet3.direction = _angle+offBullet-180;
		}
	
		contDisp = contDispInitial;
	}
}