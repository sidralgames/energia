/// @description Insert description here
// You can write your code in this editor
if (state = ENEMYSTATE.WAITING)
{
	alert = instance_create(x,y,o_invisibleAlert);
			
			speed=(random(1)+1) * global.relativeSpeed;
			_speed = speed;
			
			if instance_exists(alert)
			{
				state = ENEMYSTATE.CHASING;
			}
}
BulletDamage();

flashAlpha = 1;


