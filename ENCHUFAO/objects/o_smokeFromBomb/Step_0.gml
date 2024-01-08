/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
contSmoke--;

if (radiusSmoke <= maxRadius)
{
	radiusSmoke+=0.5;
}
for (var i = 7; i<=11; i++)
{
	part_particles_create(global.partSmokeBomb_sys, x+lengthdir_x(random_range(radiusSmoke,-radiusSmoke), (360/i)),y+lengthdir_y(random_range(radiusSmoke,-radiusSmoke), (360/i)), global.partSmokeBomb, 1);

}
if collision_circle(x,y,radiusSmoke, o_playerShip, false, true)
{
	o_playerShip.contSmokeArea = 30;	
}

if collision_circle(x,y,radiusSmoke, o_enemyP, false, true)
{
	o_enemyP.burned = true;	
}

if (contSmoke <= 0)
{
	instance_destroy();	
}

