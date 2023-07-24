// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerShipPETA()
{
	gamepad_set_vibration(0,0.2,0.2);
	alarm[4] = 3 ;
	explo = instance_create_layer(x + _hpush*3 + lengthdir_x(15, _angle), y +_vpush*5 + lengthdir_y(15, _angle),
	"Bullets", o_explo3)
	explo.image_xscale = 0.15;
	explo.image_yscale = 0.15;
	explo.image_speed = 3;
	
	screenShake(2,5)
	
	audio_play_sound_on(global.audioEmitter,snd_shoot1, false, 50)
		
	
		var peta = instance_create_layer(x + _hpush*3 + lengthdir_x(15, _angle), y +_vpush*5 + lengthdir_y(15, _angle),
		"Enchufes", o_enchufePETA);
		
		global.PETAAmmo-=1;
		
		off =  random_range(offRange,-offRange)
		if instance_exists(peta)
		{
			peta._hpush = lengthdir_x(3, _angle + off);
			peta._vpush = lengthdir_y(3, _angle + off);
			peta._angle = dire+off;
			peta.direction = dire+off;
			_hpush += -lengthdir_x(recoil_standard, _angle+off);
			_vpush += -lengthdir_y(recoil_standard, _angle+off);
			_angle +=off
			alarm[6]=bombFireRate;
		}
	
	
	
	//if (global.energy <=0) 
	//{
	//	_hpush += -lengthdir_x(recoil, dire+off);
	//	_vpush += -lengthdir_y(recoil, dire+off);
	//}
}