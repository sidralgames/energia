/// @description Insert description here
// You can write your code in this editor
if (hitByLaser = false)
{
	ebomb = instance_create(x,y,o_exploBomb);
	ebomb.scale = 0.45;
	ebomb.damagePlayer = true;
	ebomb.isFrom = "EnemyBomb";
	ebomb.sprite_index = s_exploOrange;
	ebomb.scaleShockwave = 0.1;
	ebomb.scaleShake = 0.2;
	ebomb.depth = -1000;
	shock = instance_create(x,y,o_shockwaveTiles)
	shock.scale = 0.25;
}
else
{
	ebomb = instance_create(x,y,o_exploBomb);
	ebomb.scale = 0.7;
	ebomb.scale = 0.7;
	ebomb.damagePlayer = true;
	ebomb.isFrom = "EnemyBomb";
	ebomb.sprite_index = s_exploOrange;
	ebomb.scaleShockwave = 0.25;
	ebomb.scaleShake = 0.45;
	shock = instance_create(x,y,o_shockwaveTiles)
	shock.scale = 0.45;
}



