/// @description Insert description here
// You can write your code in this editor
gamepad_set_vibration(0,0.3,0.3);

if (hitByLaser = false)
{
	ebomb = instance_create(x,y,o_exploBomb);
	ebomb.sprite_index = s_exploOrange;
	ebomb.scale = 1.4;
	ebomb.scale = 1.4;
	ebomb.isFrom = "EnemyBomb";
	ebomb.damagePlayer = true;
	
	if (sprite_index = s_bombCluster)
	{
		ebomb.sprite_index = s_exploPurple;	
	}
	shock = instance_create(x,y,o_shockwaveTiles)
	shock.scale = 1;
}
else
{
	ebomb = instance_create(x,y,o_exploBomb);
	ebomb.sprite_index = s_exploOrange;
	ebomb.scale = 1.8;
	ebomb.scale = 1.8;
	ebomb.isFrom = "EnemyBomb";
	ebomb.damagePlayer = true;
	if (sprite_index = s_bombCluster)
	{
		ebomb.sprite_index = s_exploPurple;	
	}
	shock = instance_create(x,y,o_shockwaveTiles)
	shock.scale = 1;
}


bullets = 6;
for( i = 0; i < bullets; i++ )
{
   inst = instance_create_layer( x, y, "Enemies", o_bullet_BossGarbanzo_AttackFastBomb);
	if instance_exists(inst)
	{
	    inst.direction = i * (360 / bullets ) + offset;
		inst.isBossGarbanzoBomb = true;
	}
}
