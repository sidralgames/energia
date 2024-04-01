/// @description Insert description here
// You can write your code in this editor

type = collisionType.custom;
enemy = instance_nearest(x,y,o_BossMecha)
enemyShooter = global.enemyBossCrusherBestiaryNumber;
shooterTrail = false;
if (tile_meeting(x,y, "Tiles"))
{
   instance_destroy();
}
	
image_xscale = 0.5;
image_yscale = 0.5;

hp = 200;
_vpush = 0;
_hpush= 0;
precisionHole = 1;

