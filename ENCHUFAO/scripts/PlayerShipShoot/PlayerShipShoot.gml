 // Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerShipShoot()
{
	
	gamepad_set_vibration(0,0.001*global.ammo,0.001*global.ammo);
	alarm[4] = 2 ;
	explo = instance_create_layer(x + ((_hpush*3) * global.relativeSpeed) + lengthdir_x(15, _angle), y +_vpush*5 + lengthdir_y(15, _angle),
	"Bullets", o_explo3)
	explo.image_xscale = 0.15;
	explo.image_yscale = 0.15;
	explo.image_speed = 3;
	
	screenShake(2,30)
	audio_play_sound_on(global.audioEmitter,snd_shoot_2, false, 80,,,random_range(0.85,1))
	audio_play_sound_on(global.audioEmitter,snd_shoot_5, false, 80,,,random_range(0.85,1))
		
	if (global.ammo > 0) && (global.ammo <= 50)
	{
		var bullet = instance_create_layer(x + ((_hpush*3) * global.relativeSpeed) + lengthdir_x(15, _angle), y +((_vpush*5) * global.relativeSpeed) + lengthdir_y(15, _angle),
		"Bullets", o_bulletPlayer);
		
		if (!global.infiniteAmmoIsOn)
		{
			global.ammo-=1;
		}
		
		if (global.shootingRecharges)
		{
			global.energy+=2;
		}
		
		off =  random_range(offRange,-offRange)
		
		bullet.bulletSpeed = 9;
		bullet._angle = dire+off;
		bullet.direction = dire+off;
		_hpush += -lengthdir_x(recoil_standard, _angle+off);
		_vpush += -lengthdir_y(recoil_standard, _angle+off);
		_angle +=off
		alarm[0]=fireRate;
		global.shootsFired+=1;
		global.totalBullets+=1;
	}
	else if (global.ammo > 50) && (global.ammo <= 100)
	{
		var bullet1 = instance_create_layer(x +((_hpush*3) * global.relativeSpeed) + lengthdir_x(15, _angle), y +((_vpush*5) * global.relativeSpeed)+ lengthdir_y(15, _angle),
		"Bullets", o_bulletPlayer);
		var bullet2 = instance_create_layer(x + ((_hpush*3) * global.relativeSpeed) + lengthdir_x(15, _angle), y +((_vpush*5) * global.relativeSpeed) + lengthdir_y(15, _angle),
		"Bullets", o_bulletPlayer);
		
		if (!global.infiniteAmmoIsOn)
		{
			global.ammo-=2;
		}
		
		if (global.shootingRecharges)
		{
			global.energy+=4
		}
		
		off =  random_range(offRange,-offRange)
		off1 = max(3+global.accuracy, 0.25);
		off2 = -max(3+global.accuracy, 0.25);
		
		bullet1.bulletSpeed = 9;
		bullet1._angle = dire+off1;
		bullet1.direction = dire+off1;
	

		bullet2.bulletSpeed = 9;
		bullet2._angle = dire+off2;
		bullet2.direction = dire+off2;
			
		//recoil
		_hpush += -lengthdir_x(recoil_standard, _angle+off);
		_vpush += -lengthdir_y(recoil_standard, _angle+off);
		//_angle +=off
		global.shootsFired+=2;
		global.totalBullets+=2;
		alarm[0]=fireRate;
	}
	else if (global.ammo > 100) && (global.ammo <= 150)
	{
		var bullet = instance_create_layer(x +((_hpush*3) * global.relativeSpeed) + lengthdir_x(15, _angle), y +((_vpush*5) * global.relativeSpeed) + lengthdir_y(15, _angle),
		"Bullets", o_bulletPlayer);
		var bullet1 = instance_create_layer(x + ((_hpush*3) * global.relativeSpeed) + lengthdir_x(15, _angle), y +((_vpush*5) * global.relativeSpeed) + lengthdir_y(15, _angle),
		"Bullets", o_bulletPlayer);
		var bullet2 = instance_create_layer(x + ((_hpush*3) * global.relativeSpeed) + lengthdir_x(15, _angle), y +((_vpush*5) * global.relativeSpeed) + lengthdir_y(15, _angle),
		"Bullets", o_bulletPlayer);
		
		if (!global.infiniteAmmoIsOn)
		{
			global.ammo-=3;
		}
		
		if (global.shootingRecharges)
		{
			global.energy+=6
		}
		
		
		off = 0;
		off1 = max(3+global.accuracy, 0.25);
		off2 = -max(3+global.accuracy, 0.25);
		
		bullet1.bulletSpeed = 9;
		bullet1._angle = dire+off1;
		bullet1.direction = dire+off1;
		
		bullet2.bulletSpeed = 9;
		bullet2._angle = dire+off2;
		bullet2.direction = dire+off2;
		
		bullet.bulletSpeed = 9;
		bullet._angle = dire+off;
		bullet.direction = dire+off;
			
		//recoil
		_hpush += -lengthdir_x(recoil_standard, _angle+off);
		_vpush += -lengthdir_y(recoil_standard, _angle+off);
		//_angle +=off
		global.shootsFired+=3;
		global.totalBullets+=3;
		alarm[0]=fireRate;
	}
	else if (global.ammo > 150)
	{
		var bullet = instance_create_layer(x + ((_hpush*3) * global.relativeSpeed) + lengthdir_x(15, _angle), y +((_vpush*5) * global.relativeSpeed) + lengthdir_y(15, _angle),
		"Bullets", o_bulletPlayer);
		var bullet1 = instance_create_layer(x + ((_hpush*3) * global.relativeSpeed) + lengthdir_x(15, _angle), y +((_vpush*5) * global.relativeSpeed) + lengthdir_y(15, _angle),
		"Bullets", o_bulletPlayer);
		var bullet2 = instance_create_layer(x + ((_hpush*3) * global.relativeSpeed) + lengthdir_x(15, _angle), y +((_vpush*5) * global.relativeSpeed) + lengthdir_y(15, _angle),
		"Bullets", o_bulletPlayer);
		var bullet3 = instance_create_layer(x + ((_hpush*3) * global.relativeSpeed) + lengthdir_x(15, _angle), y +((_vpush*5) * global.relativeSpeed) + lengthdir_y(15, _angle),
		"Bullets", o_bulletPlayer);
		
		if (!global.infiniteAmmoIsOn)
		{
			global.ammo-=4;
		}
		
		if (global.shootingRecharges)
		{
			global.energy+=8
		}
		
		off = max(1+global.accuracy, 0.25);
		off1 = max(4+global.accuracy, 1);
		off2 = -max(1+global.accuracy, 0.25);
		off0 = -max(4+global.accuracy, 1);
		
		bullet2.bulletSpeed = 9;
		bullet2._angle = dire+off2;
		bullet2.direction = dire+off2;
		
		bullet.bulletSpeed = 9;
		bullet._angle = dire+off;
		bullet.direction = dire+off;
		
		bullet3.bulletSpeed = 9;
		bullet3._angle = dire+off0;
		bullet3.direction = dire+off0;
		
		bullet1.bulletSpeed = 9;
		bullet1._angle = dire+off1;
		bullet1.direction = dire+off1;
		
			
		//recoil
		_hpush += -lengthdir_x(recoil_standard, _angle+off);
		_vpush += -lengthdir_y(recoil_standard, _angle+off);
		//_angle +=off
		global.shootsFired+=4;
		global.totalBullets+=4;
		alarm[0]=fireRate;
	}
	
	//if (global.energy <=0) 
	//{
	//	_hpush += -lengthdir_x(recoil, dire+off);
	//	_vpush += -lengthdir_y(recoil, dire+off);
	//}
}