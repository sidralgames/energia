// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function SpawnEnemyBasic()
{
	for (var i=0; i<random_range(enemiesMin,enemiesMax); i++)
	{
		enemies = instance_create_layer(cx*CELL_WIDTH+CELL_WIDTH/2+random_range(-28,28), cy*CELL_HEIGHT+CELL_HEIGHT/2+random_range(-10,10), "Enemies", o_enemy)
		if instance_exists(enemies)
		{
			if (global.spriteShip = splayer_Dark)
			{
				if instance_exists(enemies)
				{
					enemies._hp-=1;
				}
			}
			enemies.isCounted = false;
			enemies.state = ENEMYSTATE.WAITING;
			enemies.speed = 0;
			enemies.image_angle = irandom(360)
			enemies.direction = enemies.image_angle;
		}
	}
}