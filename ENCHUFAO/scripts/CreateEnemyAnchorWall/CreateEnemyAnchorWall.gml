// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function CreateEnemyAnchorWall()
{
	if (x > 40) && (x < room_width - 40) && (y > 40) && (y < room_height - 40)
	{
		if !collision_line(x,y,x,y-28,o_wall,false,true)
		&& collision_rectangle(x-20,y,x+20, y-20, oVinePadre, false, true)
		{
			if  point_distance(x,y,o_playerShip.x,o_playerShip.y)>100
			&& irandom(oddsEnemyMouth) == oddsEnemyMouth
			&& !collision_circle(x,y,16, o_mouthAnchor, false, true)
			{
				anchor = instance_create_layer(x,y-15,"EnemiesHUE",o_mouthAnchor);
				if instance_exists(anchor)
				{
				enemy = instance_create_layer(x,y-32,"EnemiesHUE",o_enemy_Mouth);
				enemy.anchor = anchor;
				anchor.enemyBelong = enemy;
				enemy.diffYFar = -10;
				}
			}
		}
	
		if !collision_line(x,y,x,y+28,o_wall,false,true) 
		&& collision_rectangle(x-20,y,x+20, y+20, oVinePadre, false, true)
		{
			if  point_distance(x,y,o_playerShip.x,o_playerShip.y)>100 
			&& irandom(oddsEnemyMouth) == oddsEnemyMouth
			&& !collision_circle(x,y,16, o_mouthAnchor, false, true)
			{
				anchor = instance_create_layer(x,y+15,"EnemiesHUE",o_mouthAnchor);	
					if instance_exists(anchor){
				enemy = instance_create_layer(x,y+32,"EnemiesHUE",o_enemy_Mouth);
			
				enemy.anchor = anchor;
				anchor.enemyBelong = enemy;
				enemy.diffYFar = +10;
				}
			}
		}
	}
}