/// @description Insert description here
// You can write your code in this editor
if instance_exists(o_BossMecha)
{
if (o_BossMecha.creatingEnemies)
{
var maxLenght_ = 1040;
screenShake(2,10)
gamepad_set_vibration(0,0.2, 0.2)
for(var i = 0; i < maxLenght_; i++)
{
	maxLenght=i;
     var lx = x + lengthdir_x(i, angleLaser);
     var ly = y + lengthdir_y(i, angleLaser);
		 
     if tile_meeting(lx,ly,"Tiles") || place_meeting(lx, ly, o_playerShip)
	 {
		 maxLenght_=i
		 maxLenght = maxLenght_;
				
	}
			
}

	player = collision_line(x,y,x+lengthdir_x(maxLenght_+20, angleLaser+random_range(2,-2)), y+lengthdir_y(maxLenght_+20,angleLaser+random_range(2,-2)), o_playerShip,false, true)
	bomb = collision_line(x,y,x+lengthdir_x(maxLenght_+20, angleLaser+random_range(2,-2)), y+lengthdir_y(maxLenght_+20,angleLaser+random_range(2,-2)), o_bulletPlayer_Bomb,false, true)
	enemy = collision_line(x,y,x+lengthdir_x(maxLenght_+20, angleLaser+random_range(2,-2)), y+lengthdir_y(maxLenght_+20,angleLaser+random_range(2,-2)), o_enemyP,false, true)
	
	
	if (enemy)
	{
		screenShake(4,10);
		if (enemy.isShield == true) || (enemy.enemyIsMini == true)
		{
			enemy._hp -=(1.95+global.laserDamage+(global.amplifyPowerLaser/2));
		}
		else
		{
			enemy._hp -=(0.25+global.laserDamage+(global.amplifyPowerLaser/2));
		}
		enemy.flashAlpha = 1;
		//explo = instance_create(enemy.x, enemy.y, o_explo2)
		//explo.image_xscale = 0.25;
		//explo.image_yscale = 0.25;
	}
	
	if (bomb)
	{	
		bomb.hitByLaser = true;
		instance_destroy(other)
	}
	
	
	if (player)
	{
		with (o_playerShip)
		{
			if (tocado = false)
			{
				gamepad_set_vibration(0,0.3,0.3);
				alarm[4] = 10;
				audio_play_sound_on(global.audioEmitter, snd_hit, false, 50)
				alarm[1] = 50
				tocado = true;
				global.hp -=1 * global.damageReceived;
				screenShake(4,30)
				global.hitsTaken+=1;
			}
		}
	}
}
}




