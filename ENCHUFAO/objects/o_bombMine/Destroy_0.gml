/// @description Insert description here
// You can write your code in this editor
gamepad_set_vibration(0,0.2,0.2);

if (hitByLaser = false)
{
	ebomb = instance_create(x,y,o_exploBomb);
	ebomb.scale = 1.4;
	ebomb.scale = 1.4;
	ebomb.damagePlayer = true;
	ebomb.isFromEnemy = true;
	ebomb.sprite_index = s_exploOrange;
	ebomb.scaleShockwave = 0.15;
	ebomb.scaleShake = 0.5;
	shock = instance_create(x,y,o_shockwaveTiles)
	shock.scale = 0.75;
}
else
{
	ebomb = instance_create(x,y,o_exploBomb);
	ebomb.scale = 1.8;
	ebomb.scale = 1.8;
	ebomb.damagePlayer = true;
	ebomb.isFromEnemy = true;
	ebomb.sprite_index = s_exploOrange;
	ebomb.scaleShockwave = 0.25;
	ebomb.scaleShake = 0.7;
	shock = instance_create(x,y,o_shockwaveTiles)
	shock.scale = 0.85;
}


bullets = 5;
for( i = 0; i < bullets; i++ )
{
   inst = instance_create_layer( x, y, "Enemies", o_bullet_BossGarbanzo_AttackFastBomb);
	if instance_exists(inst)
	{
	    inst.direction = i * (360 / bullets ) + offset;
		inst.hp = 90;
		inst.isMineBomb = true;
		inst.part = 1;
		//inst.dire = choose(1, -1);
	}
}
