/// @description Insert description here
// You can write your code in this editor
enemyCreated = instance_create_layer(x,y,"Enemies",enemy);

if instance_exists(enemyCreated)
{
	enemyCreated.isCounted = true;
	instance_destroy();
}

