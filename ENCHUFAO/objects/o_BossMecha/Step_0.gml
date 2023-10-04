/// @description Insert description here
// You can write your code in this editor
//makeRoom
if instance_exists(o_gridRoom) && (makeRoom = false) && (alarm[4] <= 0)
{	
	makeRoom = true;
	instance_create(x+50,y+50,o_shockwaveTiles2)
	instance_create(x-50,y-50,o_shockwaveTiles2)
	instance_create(x+50,y-50,o_shockwaveTiles2)
	instance_create(x-50,y+50,o_shockwaveTiles2)
}

switch(state)
{
	case BOSS2STATE.START: BossGarbanzoState_Start(); break;
	case BOSS2STATE.IDLE: BossGarbanzoState_Idle(); break;
	case BOSS2STATE.ATTACK: BossGarbanzoState_Attack(); break;
}

if (tile_meeting(x,y,"Tiles")) && instance_exists(o_gridRoom) && (alarm[4] <= 0) && (alarm[5] <= 0)
{
	if (abs(speed) < 0.5*global.relativeSpeed)
	{
		instance_create(x+30,y+30,o_exploBomb)
		instance_create(x+30,y-30,o_exploBomb)
		instance_create(x-30,y+30,o_exploBomb)
		instance_create(x-30,y-30,o_exploBomb)
	}
	alarm[5] = 30;
  
}

if (tile_meeting(x+hspeed,y,"Tiles"))
{
	if (abs(speed) > 2.7*global.relativeSpeed)
	{
	instance_create(x+(30*sign(hspeed)),y+(30*sign(vspeed)),o_exploBomb)
	instance_create(x+(30*sign(hspeed)),y-(30*sign(vspeed)),o_exploBomb)

	}
    hspeed = -hspeed*bnc;
}
 if (tile_meeting(x,y+vspeed,"Tiles"))
{
	if (abs(speed) > 2.7*global.relativeSpeed)
	{
		instance_create(x+(30*sign(hspeed)),y+(30*sign(vspeed)),o_exploBomb)
		instance_create(x-(30*sign(hspeed)),y+(30*sign(vspeed)),o_exploBomb)
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



