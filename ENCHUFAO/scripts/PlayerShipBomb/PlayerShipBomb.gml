// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerShipBomb()
{
	if (global.bombIsClusterBomb)
	{
		bombToFire = o_bulletPlayer_BombCluster;
	}
	else
	{
		bombToFire = o_bulletPlayer_Bomb;
	}
	
	gamepad_set_vibration(0,0.2,0.2);
	alarm[4] = 3 ;
	explo = instance_create_layer(x + _hpush*3 + lengthdir_x(10, _angle), y +_vpush*5 + lengthdir_y(10, _angle),
	"Bullets", o_explo3)
	explo.image_xscale = 0.15;
	explo.image_yscale = 0.15;
	explo.image_speed = 3*global.relativeSpeed;
	
	screenShake(2,5)
	
	audio_play_sound_on(global.audioEmitter, snd_shootBombPlayer, false, 50)
	audio_play_sound_on(global.audioEmitter, snd_shoot_3, false, 50)
	if (global.bombIsHomingBomb)
	{	
		for (var i = 0; i < 2+global.homingMissilesExtra; i++)
		{
			var bullet = instance_create_layer(x + _hpush*3 + lengthdir_x(15, _angle), y +_vpush*5 + lengthdir_y(15, _angle),
			"Bullets", bombToFire);
			off =  70+(i*20);
			bullet.directionOriginal = _angle-15;
			bullet._speed = random_range(1.5,2)
			bullet._angle = dire+off;
			bullet.direction = dire+off;
		}
		for (var i = 0; i < 2+global.homingMissilesExtra; i++)
		{
			var bullet = instance_create_layer(x + _hpush*3 + lengthdir_x(15, _angle), y +_vpush*5 + lengthdir_y(15, _angle),
			"Bullets", bombToFire);
			off =  -(70+(i*20))
			bullet.directionOriginal = _angle+15;
			bullet._speed = random_range(1.5,2)
			bullet._angle = dire+off;
			bullet.direction = dire+off;
		}
		_hpush += -lengthdir_x(recoil_bomb, _angle);
		_vpush += -lengthdir_y(recoil_bomb, _angle);
	}
	else
	{
		var bullet = instance_create_layer(x + _hpush*3 + lengthdir_x(15, _angle), y +_vpush*5 + lengthdir_y(15, _angle),
	"Bullets", bombToFire);
	off =  random_range(offRange,-offRange)
		bullet._hpush = lengthdir_x(5, _angle + off);
		bullet._vpush = lengthdir_y(5, _angle + off);
		bullet._angle = dire+off;
		bullet.direction = dire+off;
		_hpush += -lengthdir_x(recoil_bomb, _angle+off);
		_vpush += -lengthdir_y(recoil_bomb, _angle+off);
		_angle +=off
	}
	
	if (!global.godModeIsOn)
	{
		global.bombAmmo-=1;
	}
		
	global.bombsFired+=1;
	global.totalBombs+=1;
	alarm[6]=bombFireRate;
}