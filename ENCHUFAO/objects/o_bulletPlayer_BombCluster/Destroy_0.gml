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
	ebomb.scale = 1.3;
	ebomb.scale = 1.3;
	ebomb.sprite_index = s_explo2;
	instance_create(x,y,o_shockwaveTiles)
}
else
{
	ebomb = instance_create(x,y,o_exploBomb);
	ebomb.scale = 2;
	ebomb.scale = 2;
	ebomb.sprite_index = s_explo2;
	instance_create(x,y,o_shockwaveTiles)
}

offsetInitial = irandom(360);


for (var i = 0; i<=3; i++)
{
	velo = random_range(2, 4)
	bomb = instance_create(x,y,o_bulletPlayer_Bomb)
	bomb._hpush = lengthdir_x(velo, offsetInitial+90*i)
	bomb._vpush = lengthdir_y(velo, offsetInitial+90*i)
	if (global.bombIsHomingBomb)
	{
		bomb.correctedTime = 60;
		bomb.corrected = false;
		bomb.dist = random_range(120,150);
		bomb.precision = random_range(2.5,2.75);
		bomb.directionOriginal = direction;
		bomb.sprite_index = s_friend;
		off =  choose(random_range(60,70),-random_range(60,70));
		bomb._speed = random_range(2,3)
		bomb._angle = _angle+off;
		bomb.direction = _angle+off;
	}
	else
	{
		bomb.sprite_index = s_bombCluster;
		bomb.scale = 0.8;
		bomb.alarm[0] = random_range(5,10)
		bomb.minVel = 0.2
	}
}
