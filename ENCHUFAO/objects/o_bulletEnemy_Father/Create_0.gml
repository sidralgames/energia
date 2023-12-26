/// @description Insert description here
// You can write your code in this editor
type = collisionType.custom;

enemy = instance_nearest(x,y,o_enemyP)
if instance_exists(enemy)
{
	enemyShooter = enemy.sprite_index;
	shooterTrail = enemy.finalTrail;
	bulletSpeed = 0;
}


