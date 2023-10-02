// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function BossGarbanzoState_Start()
{
	mini = instance_nearest(x,y,o_enemyMini_BossMecha)

	if (point_distance(x, y,mini.x, mini.y) > 100)
	{
		image_index = 0;
	}
	else
	{
		image_index = 1;	
	}
}