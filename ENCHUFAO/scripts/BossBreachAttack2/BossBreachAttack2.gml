// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function BossBreachAttack2()
{
	if instance_exists(o_playerShip)
	{
		if (alarm[2] <= 0)
		{
			bullets = irandom_range(4,8)
			for( i = 0; i < bullets; i++ )
			{
			    inst = instance_create( x, y, o_bulletBossEnemy);
				if instance_exists(inst)
				{
				    inst.direction = i * (360 / bullets ) + offset;
				    inst.speed=1.5;
				
				}
			}
	
			offset=offset+12.25;
			alarm[2] = 120
		}
	}
}