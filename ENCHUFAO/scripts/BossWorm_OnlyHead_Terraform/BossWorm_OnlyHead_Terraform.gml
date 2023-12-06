// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function BossWorm_OnlyHead_Terraform()
{
	if (contTerraforming >= 0)
	{
		contTerraforming --;
	}
	
	if (contTerraforming <= 0)
	{
		var bullet = instance_create_layer(x - lengthdir_x(10, image_angle-180), y - lengthdir_y(10, image_angle-180),
		"EnemiesHUE", o_bombTerrain);
		bullet.bulletSpeed = random_range(0.75, 1.25);
		bullet.image_angle = image_angle-180;
		bullet.direction = image_angle-180;
		contTerraforming = random_range(contTerrMin, contTerrMax)
	}
}