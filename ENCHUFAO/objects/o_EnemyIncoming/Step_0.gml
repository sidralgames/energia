/// @description Insert description here
// You can write your code in this editor
if (image_index >= 19) && (canCreate = false)
{
	canCreate = true;
	
	if (enemy = o_enemyMouth_Free)
	{
		enemyCreated = instance_create_layer(x,y,"EnemiesHUE",enemy);
	}
	else
	{	
		enemyCreated = instance_create_layer(x,y,"Enemies",enemy);
	}

	if instance_exists(enemyCreated)
	{
		enemyCreated.isCounted = true;
		instance_destroy();
	}
}



