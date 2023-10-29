// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function BossGarbanzoState_Attack()
{
	contAttack--;
	
	switch(attack)
	{
		case 0: BossGarbanzoAttack_Rampage(); break;
		case 1: BossGarbanzoAttack_Mini_Both(); break;
		case 2: BossGarbanzoAttack_Mini_L(); break;
		case 3: BossGarbanzoAttack_Mini_R(); break;
		case 4: BossGarbanzoAttack_Laser_L(); break;
		case 5: BossGarbanzoAttack_Laser_R(); break;
		case 6: BossGarbanzoAttack_Laser_Both(); break;
		case 7: BossGarbanzoAttack_Bomb(); break;
		case 8: BossGarbanzoAttack_DownRampage(); break;
		case 9: BossGarbanzoAttack_Laser_and_Mini(); break;
	}
	
		if (contAttack <=0)
		{
			contIdl = random_range(40, 60);
			state = BOSS2STATE.IDLE;
			attackingFast = false;
			stopping = false;
			creatingEnemies = true;
			drawflash=true
			laserCreated = false
			recover = false;
			recoverTime = random_range(120,180);
		}
}