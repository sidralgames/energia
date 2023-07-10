/// @description Insert description here
// You can write your code in this editor
_hp = global.BossBreach_HP;


switch (state)
{
	case BOSSBREACHSTATE.START: BossBreachStart(); break;
	case BOSSBREACHSTATE.IDLE: BossBreachIdle(); break;
	case BOSSBREACHSTATE.FADING : BossBreachFading(); break;
	case BOSSBREACHSTATE.ATTACKONE: BossBreachAttack1(); break;
	case BOSSBREACHSTATE.ATTACKTWO: BossBreachAttack2(); break;
}


if (_hp <= 0)
{
	instance_create(x,y,o_exploBomb);
	enchufe = instance_create_layer(x,y,"Enchufes", o_enchufe_Final);
	enchufe.abierto = true;
	instance_destroy();	
}



