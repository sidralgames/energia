// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function EnemyLeaveTrail()
{
	canStopChasing = true;
			
	if (leavesTrail)
	{
		if (enemyIsMini)
		{
			contParts --;
			if (contParts <=0)
			{
				part_particles_create(global.naveEnemy_Mini_sys, x-lengthdir_x(2,direction), y-lengthdir_y(2,direction), global.naveEnemy_Mini , 1)
				contParts = contPartsInitial + random_range(0,2);
			}
		}
		else
		{
			contParts --;
			
			if (contParts <=0)
			{
				if (sprite_index = s_enemyMitosis_Mega)
				{
					part_particles_create(global.naveEnemy_Waiting_sys, x-lengthdir_x(7,direction+30), y-lengthdir_y(7,direction+30), global.naveEnemy_Waiting , 1)
					part_particles_create(global.naveEnemy_Waiting_sys, x-lengthdir_x(7,direction), y-lengthdir_y(7,direction), global.naveEnemy_Waiting , 1)
					part_particles_create(global.naveEnemy_Waiting_sys, x-lengthdir_x(7,direction-30), y-lengthdir_y(7,direction-30), global.naveEnemy_Waiting , 1)
				}
				else if (sprite_index = s_enemyMitosis)
				{
					part_particles_create(global.naveEnemy_Waiting_sys, x-lengthdir_x(7,direction+20), y-lengthdir_y(7,direction+20), global.naveEnemy_Waiting , 1)	
					part_particles_create(global.naveEnemy_Waiting_sys, x-lengthdir_x(7,direction-20), y-lengthdir_y(7,direction-20), global.naveEnemy_Waiting , 1)
				}
				else
				{
					part_particles_create(global.naveEnemy_Waiting_sys, x-lengthdir_x(7,direction), y-lengthdir_y(7,direction), global.naveEnemy_Waiting , 1)
				}
						
				contParts = contPartsInitial +random_range(0,2);
			}
		}
	}
}