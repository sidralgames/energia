// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function EnemyMouthFree_PluggedAttack()
{
	contDisp--;
	contDispTotal--;
	if contDispTotal <= 0
	{
		contDispTotal = contDispTotalMax;	
	}
	
	if (contDispTotal <120)
	{
		if (contDisp <= 0) 
		{
			//var bullet = instance_create_layer(x + lengthdir_x(25, _angle), y + lengthdir_y(25, _angle),
			//"EnemiesHUE", o_bulletMouth_Free);
			
			//if instance_exists(bullet)
			//{
			//	bullet.bulletSpeed = bulletVelo;
			//	bullet.image_angle = _angle;
			//	bullet.direction = _angle;
			//}
		
			
			var bullet2 = instance_create_layer(x + lengthdir_x(15, _angle), y + lengthdir_y(15, _angle),
			"EnemiesHUE", o_bulletMouth_Free);
			
			if instance_exists(bullet2)
			{
				bullet2.bulletSpeed = bulletVelo;
				bullet2.image_angle = _angle-offBullet;
				bullet2.direction = _angle-offBullet;
			}
	
			var bullet3 = instance_create_layer(x + lengthdir_x(15, _angle), y + lengthdir_y(15, _angle),
			"EnemiesHUE", o_bulletMouth_Free);
			if instance_exists(bullet3)
			{
				bullet3.bulletSpeed = bulletVelo;
				bullet3.image_angle = _angle+offBullet;
				bullet3.direction = _angle+offBullet;
			}
	
			contDisp = contDispInitial;
		
			//hspeed -= lengthdir_x(0.5, _angle);
			//vspeed -= lengthdir_y(0.5, _angle);
		}
	}
}