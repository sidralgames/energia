/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
contSmoke--;

if (radiusSmoke <= maxRadius)
{
	radiusSmoke+=0.5;
}


if (global.bombIsHomingBomb)
{
	
	part_particles_create(global.partSmokeBomb_sys, x+lengthdir_x(random_range(radiusSmoke,-radiusSmoke), irandom(360)),y+lengthdir_y(random_range(radiusSmoke,-radiusSmoke), irandom(360)), global.partSmokeBomb, 1);
	part_particles_create(global.partSmokeBomb_Back_sys, x+lengthdir_x(random_range(radiusSmoke,-radiusSmoke), irandom(360)),y+lengthdir_y(random_range(radiusSmoke,-radiusSmoke), irandom(360)), global.partSmokeBomb_Back, 1);
	

}
else
{
	for (var i = 7; i<=11; i++)
	{
		part_particles_create(global.partSmokeBomb_sys, x+lengthdir_x(random_range(radiusSmoke,-radiusSmoke), (360/i)),y+lengthdir_y(random_range(radiusSmoke,-radiusSmoke), (360/i)), global.partSmokeBomb, 1);
		part_particles_create(global.partSmokeBomb_Back_sys, x+lengthdir_x(random_range(radiusSmoke,-radiusSmoke), (360/i)),y+lengthdir_y(random_range(radiusSmoke,-radiusSmoke), (360/i)), global.partSmokeBomb_Back, 1);
	}

}

//-- HIDE PLAYER --//
if collision_circle(x,y,radiusSmoke, o_playerShip, false, true)
{
	o_playerShip.contSmokeArea = 30;	
}

//-- BURN ENEMIES --//
enemyToBurn = collision_circle(x,y,radiusSmoke, o_enemyP, false, true);

if (enemyToBurn)
{
	enemyToBurn.burned = true;	
}

if (contSmoke <= 0)
{
	instance_destroy();	
}

