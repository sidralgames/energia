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
		
	shoots = ceil(global.ammo/global.ammoMod);
		
	for (var i = 0; i<shoots; i++)
	{
		//----- EQUIDISTANTES Y REPARTIDAS A CADA LADO - 2.5PX DE DIFERENCIA ENTRE BALA ¿¿ACCURACY??----//
		off = -(shoots) + i*2.5; 
		
		bullet[i] = instance_create_layer(x +((_hpush*3) * global.relativeSpeed) + lengthdir_x(15, _angle), y +((_vpush*5) * global.relativeSpeed)+ lengthdir_y(15, _angle),
		"Bullets", o_bulletPlayer);
		if (!global.infiniteAmmoIsOn)
		{
			global.ammo-=1;
		}
		
		if (global.shootingRecharges)
		{
			global.energy+=2;
		}
	
		bullet[i].bulletSpeed = 9;
		bullet[i]._angle = dire+off;
		bullet[i].direction = dire+off;
		bullet[i].isFrom = "Player";
	
		global.shootsFired+=1;
		global.totalBullets+=1;
	}
	
	_hpush += -lengthdir_x(recoil_standard, _angle+off);
	_vpush += -lengthdir_y(recoil_standard, _angle+off);
	_angle +=off
	
	alarm[0]=fireRate;
}