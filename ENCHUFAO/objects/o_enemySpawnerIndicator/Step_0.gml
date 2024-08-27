/// @description Insert description here
// You can write your code in this editor
//if alarm[0] <= 0
//{
//	instance_create_layer(x+random_range(30,-30),y+random_range(30,-30),"Enemies",o_enemyFast)
//	alarm[0] = random_range(5,30)
//}
if (global.inTutorial)
{
	if !instance_exists(enemies) && (canCreate = false)
	{
		image = 0;
		canCreate = true;
		alarm[1] = random_range(120, 180);
	}

	if canCreate = true && (alarm[1] <= 0)
	{
		for (var i=0; i<random_range(2,3); i++)
		{
			enemyToCreate = choose(o_enemyMini, o_enemyFast, o_enemy)
			enemies = instance_create_layer(x+random_range(-28,28),
			y, "Enemies", enemyToCreate)
			if instance_exists(enemies)
			{

				enemies.isCounted = false;
				enemies.state = ENEMYSTATE.WAITING;
				enemies.speed = 0;
				enemies._angle = irandom(360)
				enemies.direction = enemies._angle;
			}
		}

		canCreate = false;
	}
}