// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Enemy_ChasingMouthFree()
{
	if instance_exists(o_playerShip)
	{
		EnemyMouthMoveAndBreak()
		
		inEnchufe = collision_circle(x,y,30,o_enchufeStandard_Father,false,true)
		if contCanPlug >0
		{
			contCanPlug--;
		}
		
		if (inEnchufe) && (contCanPlug<=0)
		{	
			enchufe = inEnchufe;
			if (!enchufe.occupied) && (!plugged) && (!enchufe.enchufeBomb)
			{
				enchufe.occupied = true;
				plugging = true;
				contPlugged = random_range(contPluggedMin, contPluggedMax)
			}
		}
		
		if (plugged)
		{
			if (_hp <= 0)
			{
				enchufe.occupied = false;
			}
			
			contPlugged--;
			
			if (contPlugged<=0)
			{
				plugged = false;
				cable.contPlugBody = 50;
				enchufe.occupied = false;
				contCanPlug = 120;
				contPlugged = random_range(contPluggedMin, contPluggedMax)
			}
			
			if (point_distance(x,y,enchufe.x,enchufe.y) <= cable._segments*20)
			{
				EnemyMouthMoveAndBreak()
			}
			else
			{
				dir = point_direction(x,y,enchufe.x,enchufe.y)
				
				hspeed = lengthdir_x(1,dir)
				vspeed = lengthdir_y(1,dir)
		
				enchufe._hpush -= lengthdir_x(0.2,dir)
				enchufe._vpush -= lengthdir_y(0.2,dir)
			}
			
			EnemyMouthFree_PluggedAttack();
			
		}
	}
}