/// @description Insert description here
// You can write your code in this editor
if instance_exists(instTope) && instance_exists(inst)
{
	instTope.inEnemy = false;
	instTope.speed = inst.enemySpeed/2;
	instTope.direction = inst._angle;
	instTope._angle = instTope.image_angle-90;
}




