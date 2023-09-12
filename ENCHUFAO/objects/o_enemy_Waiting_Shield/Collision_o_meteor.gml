/// @description Insert description here
// You can write your code in this editor
if (state = ENEMYSTATE.WAITING)
{
	alert = instance_create(x,y,o_invisibleAlert);
	shield = instance_create_layer(x,y,"ShieldEnemy",o_shieldEnemy)	
			
			speed=(random(1)+1) * global.relativeSpeed;
			_speed = speed;
			
		if instance_exists(shield)
		{
			existsShield = true;
			state = ENEMYSTATE.CHASING;	
		}
}

_hp -= global.superShot;
flashAlpha = 1;
instance_destroy(other);




