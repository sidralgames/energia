/// @description Insert description here
// You can write your code in this editor
type = collisionType.custom;
contPart = 2;

hp = 200;
image_speed =0.7;
bulletSpeed = 0;
if tile_meeting(x,y,"Tiles")
{
	instance_destroy();
}

precisionHole = 1;
enemyShooter = global.enemyPincherBestiaryNumber;
shooterTrail = false;

_hp = 3;