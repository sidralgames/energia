/// @description Insert description here
// You can write your code in this editor
Controls_Input()
event_inherited();
if (flashAlpha > 0) 
{
	flashAlpha -= 0.09;
}

switch(state)
{
	case ENEMYSTATE.PLUGGED: EnemyEnchufePlugged(); break;
	case ENEMYSTATE.FREE: EnemyEnchufeFree(); break;
	
}


if (_hp <= 0)
	{
		
		instance_destroy(cable)
		screenShake(1,10)
		global.XPpoints +=30;
		explo = instance_create(x,y,o_explo2)
		explo.image_xscale = 0.5;
		explo.image_yscale = 0.5;
		instance_destroy();
	}
