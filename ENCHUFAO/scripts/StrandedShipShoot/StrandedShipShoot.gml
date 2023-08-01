// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function StrandedShipShoot()
{

	explo = instance_create_layer(x + ((_hpush*3) * global.relativeSpeed) + lengthdir_x(15, _angle), y +_vpush*5 + lengthdir_y(15, _angle),
	"Bullets", o_explo3)
	explo.image_xscale = 0.15;
	explo.image_yscale = 0.15;
	explo.image_speed = 3;
	
	audio_play_sound_on(global.audioEmitter,snd_shoot1, false, 50)
		
	
		var bullet1 = instance_create_layer(x +((_hpush*3) * global.relativeSpeed) + lengthdir_x(15, _angle), y +((_vpush*5) * global.relativeSpeed)+ lengthdir_y(15, _angle),
		"Bullets", o_bulletPlayer);
		var bullet2 = instance_create_layer(x + ((_hpush*3) * global.relativeSpeed) + lengthdir_x(15, _angle), y +((_vpush*5) * global.relativeSpeed) + lengthdir_y(15, _angle),
		"Bullets", o_bulletPlayer);
	
		
		off =  random_range(offRange,-offRange)
		off1 = 3;
		off2 = -3;
		
		bullet1._hpush = lengthdir_x(9, _angle + off1);
		bullet1._vpush = lengthdir_y(9, _angle + off1);
		bullet1._angle = _angle+off1;
		bullet1.direction = _angle+off1;
	

		bullet2._hpush = lengthdir_x(9, _angle + off2);
		bullet2._vpush = lengthdir_y(9, _angle + off2);
		bullet2._angle = _angle+off2;
		bullet2.direction = _angle+off2;
			
		//recoil
		_hpush += -lengthdir_x(0.2, _angle+off);
		_vpush += -lengthdir_y(0.2, _angle+off);
		//_angle +=off
		alarm[1]=standedShipfireRate;

}