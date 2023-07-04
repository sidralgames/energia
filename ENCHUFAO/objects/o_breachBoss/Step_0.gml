/// @description Insert description here
// You can write your code in this editor
_hp = global.BossBreach_HP;


	if (alarm[0] <= 0) || (maxHPLost <= 0)
	{
		if (state != BOSSBREACHSTATE.START)
		{
			image_speed = -imageSpeed;
	
				if (image_index <=1)
				{
					instance_destroy();
				}
		}
	}
	else
	{
		if (image_index >= 40)
		{
			image_index =24;
		}
	}


switch (state)
{
	case BOSSBREACHSTATE.START: BossBreachStart(); break;
	case BOSSBREACHSTATE.IDLE: BossBreachIdle(); break;
	case BOSSBREACHSTATE.ATTACKONE: BossBreachAttack1(); break;
	case BOSSBREACHSTATE.ATTACKTWO: BossBreachAttack2(); break;
}


if (_hp <= 0)
{
	instance_create(x,y,o_exploBomb)
	enchufe = instance_create(x,y,o_enchufe_Final);
	enchufe.abierto = true;
	instance_destroy();	
}



