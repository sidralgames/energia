// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function BossGarbanzoState_Attack()
{
	contAttack--;
	
	switch(attack)
	{
		case 0:
		{
			BossGarbanzoAttack_0();
			
		}
		break;
		
		case 1:
		{
			BossGarbanzoAttack_1();
		
		}
		break;
		
		case 2:
		{
			image_index = 2;	
		}
		case 3:
		{
			image_index = 3;	
		}
		break;
	}
	
	
		if (contAttack <=0) && (speed <=1)
		{
			contIdl = random_range(100, 150);
			state = BOSS2STATE.IDLE;
			attackingFast = false;
			stopping = false;
			creatingEnemies = true;
			image_index = 0;
		}
}