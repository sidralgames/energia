/// @description Insert description here
// You can write your code in this editor
gamepad_set_vibration(0,0.3,0.3);
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


for (var i = 0; i<=4; i++)
{
	velo = random_range(2.5, 3)
	bomb = instance_create(x,y,o_bulletPlayer_Bomb)
	bomb._hpush = lengthdir_x(velo, offsetInitial+90*i)
	bomb._vpush = lengthdir_y(velo, offsetInitial+90*i)
	bomb.sprite_index = s_bombCluster;
	bomb.scale = 0.8;
}
