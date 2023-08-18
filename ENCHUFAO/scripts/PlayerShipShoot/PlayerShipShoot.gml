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
	
	screenShake(1,10)
	audio_play_sound_on(global.audioEmitter,snd_shoot1, false, 50)
		
	if (global.ammo > 0) && (global.ammo <= 50)
	{
		var bullet = instance_create_layer(x + ((_hpush*3) * global.relativeSpeed) + lengthdir_x(15, _angle), y +((_vpush*5) * global.relativeSpeed) + lengthdir_y(15, _angle),
		"Bullets", o_bulletPlayer);
		
		global.ammo-=1;
		
		off =  random_range(offRange,-offRange)
		bullet._hpush = lengthdir_x(9, _angle + off);
		bullet._vpush = lengthdir_y(9, _angle + off);
		bullet._angle = dire+off;
		bullet.direction = dire+off;
		_hpush += -lengthdir_x(recoil_standard, _angle+off);
		_vpush += -lengthdir_y(recoil_standard, _angle+off);
		_angle +=off
		alarm[0]=fireRate;
	}
	else if (global.ammo > 50) && (global.ammo <= 100)
	{
		var bullet1 = instance_create_layer(x +((_hpush*3) * global.relativeSpeed) + lengthdir_x(15, _angle), y +((_vpush*5) * global.relativeSpeed)+ lengthdir_y(15, _angle),
		"Bullets", o_bulletPlayer);
		var bullet2 = instance_create_layer(x + ((_hpush*3) * global.relativeSpeed) + lengthdir_x(15, _angle), y +((_vpush*5) * global.relativeSpeed) + lengthdir_y(15, _angle),
		"Bullets", o_bulletPlayer);
		
		global.ammo-=2;
		
		off =  random_range(offRange,-offRange)
		off1 = 3;
		off2 = -3;
		
		bullet1._hpush = lengthdir_x(9, _angle + off1);
		bullet1._vpush = lengthdir_y(9, _angle + off1);
		bullet1._angle = dire+off1;
		bullet1.direction = dire+off1;
	

		bullet2._hpush = lengthdir_x(9, _angle + off2);
		bullet2._vpush = lengthdir_y(9, _angle + off2);
		bullet2._angle = dire+off2;
		bullet2.direction = dire+off2;
			
		//recoil
		_hpush += -lengthdir_x(recoil_standard, _angle+off);
		_vpush += -lengthdir_y(recoil_standard, _angle+off);
		//_angle +=off
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
		
		global.ammo-=3;
		
		off = 0;
		off1 = 3;
		off2 = -3;
		
		bullet1._hpush = lengthdir_x(9, _angle + off1);
		bullet1._vpush = lengthdir_y(9, _angle + off1);
		bullet1._angle = dire+off1;
		bullet1.direction = dire+off1;
		
		bullet2._hpush = lengthdir_x(9, _angle + off2);
		bullet2._vpush = lengthdir_y(9, _angle + off2);
		bullet2._angle = dire+off2;
		bullet2.direction = dire+off2;
		
		bullet._hpush = lengthdir_x(9, _angle + off);
		bullet._vpush = lengthdir_y(9, _angle + off);
		bullet._angle = dire+off;
		bullet.direction = dire+off;
			
		//recoil
		_hpush += -lengthdir_x(recoil_standard, _angle+off);
		_vpush += -lengthdir_y(recoil_standard, _angle+off);
		//_angle +=off
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
		
		global.ammo-=4;
		
		off = 1;
		off1 = 4;
		off2 = -1;
		off0 = -4
		
		bullet2._hpush = lengthdir_x(9, _angle + off2);
		bullet2._vpush = lengthdir_y(9, _angle + off2);
		bullet2._angle = dire+off2;
		bullet2.direction = dire+off2;
		
		bullet._hpush = lengthdir_x(9, _angle + off);
		bullet._vpush = lengthdir_y(9, _angle + off);
		bullet._angle = dire+off;
		bullet.direction = dire+off;
		
		bullet3._hpush = lengthdir_x(9, _angle + off0);
		bullet3._vpush = lengthdir_y(9, _angle + off0);
		bullet3._angle = dire+off0;
		bullet3.direction = dire+off0;
		
		bullet1._hpush = lengthdir_x(9, _angle + off1);
		bullet1._vpush = lengthdir_y(9, _angle + off1);
		bullet1._angle = dire+off1;
		bullet1.direction = dire+off1;
		
			
		//recoil
		_hpush += -lengthdir_x(recoil_standard, _angle+off);
		_vpush += -lengthdir_y(recoil_standard, _angle+off);
		//_angle +=off
		alarm[0]=fireRate;
	}
	
	//if (global.energy <=0) 
	//{
	//	_hpush += -lengthdir_x(recoil, dire+off);
	//	_vpush += -lengthdir_y(recoil, dire+off);
	//}
}