// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function SpawnEnemyFastAndShield()
{
	for (var i=0; i<random_range(enemiesMin,enemiesMax); i++)
	{
		obj = choose(o_enemyFast, o_enemyFast, o_enemyFast, o_enemy_Waiting_Shield)
		
		enemies = instance_create_layer(cx*CELL_WIDTH+CELL_WIDTH/2+random_range(-28,28),
		cy*CELL_HEIGHT+CELL_HEIGHT/2+random_range(-10,10), "Enemies", obj)
		if instance_exists(enemies)
		{
			enemies.isCounted = false;
			enemies.state = ENEMYSTATE.WAITING;
			enemies.speed = 0;
			enemies._angle = irandom(360)
			enemies.direction = enemies._angle;
		}
	}
}