// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Enemy_ChasingMouthFree()
{
	if instance_exists(o_playerShip)
	{
		if (isBossWorm)
		{
			BossWormChasingLogic();
		}
		else
		{
			WormChasingLogic();	
		}
	}
}