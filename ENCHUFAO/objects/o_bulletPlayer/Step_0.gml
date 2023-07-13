/// @description Insert description here
// You can write your code in this editor
event_inherited();
part_particles_create(global.balaP_sys, x, y, global.balaP , 5)

x+=_hpush * global.relativeSpeed;
y+=_vpush * global.relativeSpeed;

//if instance_exists(lightBullet)
//{
//	lightBullet.light [| eLight.X] = x
//	lightBullet.light [| eLight.Y] = y
//	lightBullet.light [| eLight.Direction] = direction-90
//}




