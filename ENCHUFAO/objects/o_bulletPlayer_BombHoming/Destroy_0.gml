/// @description Insert description here
// You can write your code in this editor
gamepad_set_vibration(0,0.3,0.3);
if (global.haveSmokeBomb)
{
	instance_create_layer(x,y,"Text",o_smokeFromBomb);
}
if (hitByLaser = false)
{
	ebomb = instance_create(x,y,o_exploPurple);
	ebomb.scale = 1.4;
	ebomb.scale = 1.4;
	if (sprite_index = s_bombCluster)
	{
		ebomb.sprite_index = s_exploPurple;	
	}
	instance_create(x,y,o_shockwaveTiles)
}
else
{
	ebomb = instance_create(x,y,o_exploPurple);
	ebomb.scale = 1.8;
	ebomb.scale = 1.8;
	if (sprite_index = s_bombCluster)
	{
		ebomb.sprite_index = s_exploPurple;	
	}
	instance_create(x,y,o_shockwaveTiles)
}

