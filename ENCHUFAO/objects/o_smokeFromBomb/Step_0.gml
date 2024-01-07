/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
contSmoke--;

if radiusSmoke <= 60
{
	radiusSmoke+=0.5;
}

part_particles_create(global.partSmokeBomb_sys, x+lengthdir_x(random_range(radiusSmoke,-radiusSmoke), irandom(360)),y+lengthdir_y(random_range(radiusSmoke,-radiusSmoke), irandom(360)), global.partSmokeBomb, 1);
part_particles_create(global.partSmokeBomb_sys, x+lengthdir_x(random_range(radiusSmoke,-radiusSmoke), irandom(360)),y+lengthdir_y(random_range(radiusSmoke,-radiusSmoke), irandom(360)), global.partSmokeBomb, 1);

if collision_circle(x,y,radiusSmoke, o_playerShip, false, true)
{
	o_playerShip.contSmokeArea = 30;	
}

if (contSmoke <= 0)
{
	instance_destroy();	
}

