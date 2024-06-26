/// @description Insert description here
// You can write your code in this editor
//makeRoom
//if instance_exists(o_gridRoom) && (makeRoom = false) && (alarm[4] <= 0)
//{	
//	instance_create(x,y,o_shockwaveTiles2)
//	instance_create(x+80,y+80,o_shockwaveTiles2)
//	instance_create(x-80,y-80,o_shockwaveTiles2)
//	instance_create(x+80,y+20,o_shockwaveTiles2)
//	instance_create(x-80,y-20,o_shockwaveTiles2)
//	instance_create(x+80,y-80,o_shockwaveTiles2)
//	instance_create(x-80,y+80,o_shockwaveTiles2)
//	makeRoom = true;
//}

switch(state)
{
	case BOSS2STATE.START: BossGarbanzoState_Start(); break;
	case BOSS2STATE.IDLE: BossGarbanzoState_Idle(); break;
	case BOSS2STATE.ATTACK: BossGarbanzoState_Attack(); break;
}

//if (tile_meeting(x,y,"Tiles")) && instance_exists(o_gridRoom) && (alarm[4] <= 0) && (alarm[5] <= 0)
//{
//	if (abs(speed) > 0.5*global.relativeSpeed)
//	{
//		b1 = instance_create(x+50,y+50,o_exploBomb)
//		b2 = instance_create(x+50,y-50,o_exploBomb)
//		b3 = instance_create(x-50,y+50,o_exploBomb)
//		b4 = instance_create(x-50,y-50,o_exploBomb)
//		b5 = instance_create(x-60,y,o_exploBomb)
//		b6 = instance_create(x+60,y,o_exploBomb)
//		b1.isFrom = "BossBomb";
//		b2.isFrom = "BossBomb";
//		b3.isFrom = "BossBomb";
//		b4.isFrom = "BossBomb";
//		b5.isFrom = "BossBomb";
//		b6.isFrom = "BossBomb";
//	}
	
//	alarm[5] = 30;
//}

if (tile_meeting(x+hspeed,y,"Tiles"))
{
	if (abs(speed) > 2.7*global.relativeSpeed)
	{
		if (alarm[7] <= 0)
		{
			b1 = instance_create(x+(30*sign(hspeed)),y+(30*sign(vspeed)),o_exploBomb)
			b2 = instance_create(x+(30*sign(hspeed)),y-(30*sign(vspeed)),o_exploBomb)
			b1.isFrom = "BossBomb";
			b2.isFrom = "BossBomb";
			
			alarm[7] = 20;
		}
	}
    hspeed = -hspeed*bnc;
}
 if (tile_meeting(x,y+vspeed,"Tiles"))
{
	if (abs(speed) > 2.7*global.relativeSpeed)
	{
		if (alarm[7] <= 0)
		{
			b1 = instance_create(x+(30*sign(hspeed)),y+(30*sign(vspeed)),o_exploBomb)
			b2 = instance_create(x-(30*sign(hspeed)),y+(30*sign(vspeed)),o_exploBomb)
		
			b1.isFrom = "BossBomb";
			b2.isFrom = "BossBomb";
			b1.isExploFromBoss = true;
			b2.isExploFromBoss = true;
			
			alarm[7] = 20;
		}
	}
    vspeed = -vspeed*bnc;
}

	
if (inside.hp < 1)
{
	killedByPlayer = true;
	instance_destroy();
	instance_destroy(inside);
	instance_create(x-10,y,o_exploBomb);
	instance_create(x,y-20,o_exploBomb);
	instance_create(x+10,y,o_exploBomb);
	//instance_create_layer(x,y,"Enemies", o_enemyMini_PostBoss);
	enchufeFinal = instance_create_layer(x,y,"Enchufes", o_enchufe_Final)
	enchufeFinal.abierto = true;
}




