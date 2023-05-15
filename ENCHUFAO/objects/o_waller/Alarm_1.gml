/// @description Insert description here
// You can write your code in this editor
if (global.enemies <= 1 + (global.level * 5))
{
	if instance_exists(o_playerShip)
	{
		var cx = 1*(irandom(38)+1)//width div 2;
		var cy = 1*(irandom(38)+1);//height div 2;

		if (global.wallgrid_[# cx, cy] == FLOOR) 
		{
			if (point_distance(cx, cy, o_playerShip.x, o_playerShip.y) > 200)
			{
				enemies = instance_create_layer(cx*CELL_WIDTH+CELL_WIDTH/2, cy*CELL_HEIGHT+CELL_HEIGHT/2, "Player", o_EnemyIncoming)
				enemies.enemy = choose(o_enemy, o_enemyFast, o_enemyDisp, o_enemyMisil)
				global.enemies +=1;
			}
		}
	}

	alarm[1] = max(60, random_range(140,200) - (10*global.level));
}

