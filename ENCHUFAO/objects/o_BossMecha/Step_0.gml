/// @description Insert description here
// You can write your code in this editor


switch(state)
{
	case BOSS2STATE.START: BossGarbanzoState_Start(); break;
	case BOSS2STATE.IDLE: BossGarbanzoState_Idle(); break;
	case BOSS2STATE.ATTACK: BossGarbanzoState_Attack(); break;
}



if (tile_meeting(x+hspeed,y,"Tiles"))
{
	if (abs(speed) > 3)
	{
	instance_create(x+hspeed*10,y+vspeed*10,o_exploBomb)
	}
    hspeed = -hspeed*bnc;
}

if (tile_meeting(x,y+vspeed,"Tiles"))
{
	if (abs(speed) > 3)
	{
		instance_create(x+hspeed*10,y+vspeed*10,o_exploBomb)
	}
    vspeed = -vspeed*bnc;
}


	
if (inside.hp <= 0)
{
	instance_destroy();
	instance_destroy(inside);
	instance_create(x,y,o_exploBomb);
	instance_create(x,y,o_enemyMini);
	
}




