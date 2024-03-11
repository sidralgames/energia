// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerShipPETA()
{
	if (global.allPETAisMulti)
	{
		petaToLaunch = o_enchufePETAAll;
	}
	else
	{
		petaToLaunch =  o_enchufePETA;
	}
	
	if (global.shockingPetasIsUpgraded)
	{
		drawingShockPeta = true;
		
		if instance_exists(o_enemyP)
		{
			var _list = ds_list_create();
			var _num = collision_rectangle_list(__view_get( e__VW.XView, 0 ), __view_get( e__VW.YView, 0 ),
			__view_get( e__VW.XView, 0 )+640,__view_get( e__VW.YView, 0 )+360, o_enemyP, false, true, _list, false);
			if _num > 0
			{
			    for (var i = 0; i < _num; ++i;)
			    {
					_list[| i].slowedCont = random_range(300,500);
					_list[| i].slowedPeta = 0.5;
			        _list[| i].electrocutated = true;
					_list[| i].slowed = true;
					
					shokExplo = instance_create(_list[| i].x, _list[| i].y, o_exploPurple);
					shokExplo.image_xscale = 0.5;
					shokExplo.image_yscale = 0.5;
			    }
			}
			ds_list_destroy(_list);
		}
	}
	
	gamepad_set_vibration(0,0.2,0.2);
	alarm[4] = 3 ;
	explo = instance_create_layer(x + _hpush*3 + lengthdir_x(15, _angle), y +_vpush*5 + lengthdir_y(15, _angle),
	"Bullets", o_explo3)
	explo.image_xscale = 0.15;
	explo.image_yscale = 0.15;
	explo.image_speed = 3;
	
	screenShake(2,5)
	
	audio_play_sound_on(global.audioEmitter,snd_launchPeta, false, 50)
		
	
		var peta = instance_create_layer(x + _hpush*3 + lengthdir_x(5, _angle), y +_vpush*5 + lengthdir_y(5, _angle),
		"Enchufes", petaToLaunch);
		global.petasUsed+=1;
		global.PETAAmmo-=1;
		
		off =  random_range(offRange,-offRange)
		if instance_exists(peta)
		{
			peta._hpush = lengthdir_x(1.5, _angle + off);
			peta._vpush = lengthdir_y(1.5, _angle + off);
			peta._angle = dire+off;
			peta.direction = dire+off;
			//_hpush += -lengthdir_x(recoil_standard, _angle+off);
			//_vpush += -lengthdir_y(recoil_standard, _angle+off);
			_angle +=off
			alarm[11]=petaFireRate;
			global.totalPETAS+=1;
		}
	
	
	
	//if (global.energy <=0) 
	//{
	//	_hpush += -lengthdir_x(recoil, dire+off);
	//	_vpush += -lengthdir_y(recoil, dire+off);
	//}
}