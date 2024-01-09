/// @description Insert description here
// You can write your code in this editor
gamepad_set_vibration(0,0.3,0.3);
if (global.haveSmokeBomb)
{
	instance_create_layer(x,y,"Text",o_smokeFromBomb);
}
if (hitByLaser = false)
{
	ebomb = instance_create(x,y,o_exploBomb);
	ebomb.scale = 1.4*scaleEnd;
	if (sprite_index = s_bombCluster)
	{
		ebomb.sprite_index = s_explo2;	
	}
	shock = instance_create(x,y,o_shockwaveTiles)
	shock.scale = scaleEnd;
}
else
{
	ebomb = instance_create(x,y,o_exploBomb);
	ebomb.scale = 1.8*scaleEnd;
	if (sprite_index = s_bombCluster)
	{
		ebomb.sprite_index = s_explo2;	
	}
	instance_create(x,y,o_shockwaveTiles)
	shock = instance_create(x,y,o_shockwaveTiles)
	shock.scale = scaleEnd;
}

