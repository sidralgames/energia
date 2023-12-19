/// @description Insert description here
// You can write your code in this editor
if instance_exists(o_gridRoom)
{
	event_inherited();
	if (flashAlpha > 0) 
	{
		flashAlpha -= 0.09;
	}

	switch(state)
	{
		case ENEMYSTATE.WAITING: Enemy_Waiting(); break;
		case ENEMYSTATE.CHASING: Enemy_Chasing(); break;
		case ENEMYSTATE.SHOCKED: Enemy_Shocked(); break;
	}

	//if instance_exists(lightEnemy)
	//	{
	//		lightEnemy.light [| eLight.X] = x
	//		lightEnemy.light [| eLight.Y] = y
	//	}


	//if (_hp <= 0)
	//{
	//	instance_destroy();
	//}
}