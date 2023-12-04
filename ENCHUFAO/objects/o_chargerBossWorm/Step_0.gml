/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

if (!tile_meeting(x,y,"Tiles"))
{
	if (contTerraforming >= 0)
	{
		contTerraforming --;
	}
	
	if (contTerraforming <= 0)
	{
		var bullet = instance_create_layer(x + lengthdir_x(10, image_angle), y + lengthdir_y(10, image_angle),
		"EnemiesHUE", o_bombTerrain);
		bullet.bulletSpeed = random_range(0.75, 1.25);
		bullet.image_angle = image_angle;
		bullet.direction = image_angle;
		contTerraforming = random_range(contTerrMin, contTerrMax)
	}
}


