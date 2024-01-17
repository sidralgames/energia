/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if (global.relativeSpeed !=1)
{
	image_speed = imageSpeed * global.relativeSpeed;
}
else
{
	image_speed = imageSpeedFast;
}

if (alarm[3] <= 0)
{
	playerRepelled = false;
}

if (alarm[4] <= 0)
{
	repelledEnemy = false;
}






