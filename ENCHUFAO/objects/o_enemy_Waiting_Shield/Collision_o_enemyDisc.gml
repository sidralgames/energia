/// @description Insert description here
if (other.spin >= other.spinIdle+0.1)
{
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
	
	_hp -= 1;
	flashAlpha = 1;
}




