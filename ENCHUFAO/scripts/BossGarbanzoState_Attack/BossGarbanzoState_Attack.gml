// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function BossGarbanzoState_Attack()
{
	contAttack--;
	
	switch(attack)
	{
		case 0: BossGarbanzoAttack_0(); break;
		case 1: BossGarbanzoAttack_1(); break;
		case 2: BossGarbanzoAttack_1a(); break;
		case 3: BossGarbanzoAttack_1b(); break;
		case 4: BossGarbanzoAttack_Laser_L(); break;
		case 5: BossGarbanzoAttack_Laser_R(); break;
		case 6: BossGarbanzoAttack_Laser_Both(); break;
	}
	
	
		if (contAttack <=0) && (speed*global.relativeSpeed <=1*global.relativeSpeed)
		{
			contIdl = random_range(100, 150);
			state = BOSS2STATE.IDLE;
			attackingFast = false;
			stopping = false;
			creatingEnemies = true;
			drawflash=true
			laserCreated = false
			image_index = 0;
		}
}