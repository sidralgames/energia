/// @description Insert description here
// You can write your code in this editor
event_inherited();
part_particles_create(global.balaP_sys, x, y, global.balaP , 5)


if (bifurcate = true) && (alarm[1] <= 0)
{
	dyingBif = true;
	instance_destroy()
	bullet1 = instance_create_layer(x,y, "Bullets", o_bulletPlayer)
	bullet2 = instance_create_layer(x,y, "Bullets", o_bulletPlayer)
	bullet1.bifurcate = false;
	bullet2.bifurcate = false;
	bullet1.bulletSpeed = 9;
	bullet2.bulletSpeed = 9;
	bullet1.direction = direction+6;
	bullet2.direction = direction-6;
}
//if instance_exists(lightBullet)
//{
//	lightBullet.light [| eLight.X] = x
//	lightBullet.light [| eLight.Y] = y
//	lightBullet.light [| eLight.Direction] = direction-90
//}




