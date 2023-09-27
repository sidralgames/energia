// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerStats_MP3_menu()
{
global.spriteShip = splayer_mp3;
	global.spritePart = s_nave_part;
	global.bulletPart_sprite = s_nave_part;
		
	global.energyTotal = 350000000000000000;
	global.energy = global.energyTotal;
	
	global.hpMax = 3;
	global.hp = 3;
	
	global.laserMax = 4;
	global.laser = 4;
	
	global.ammo = 150;
	global.ammoMax = 150;
	
	
	
	global._speed = 3.15;
	global.walkAcceleration = 0.18;
	
	global.energyStat = 4;
	global.speedStat = 6;
	global.hpStat = global.hpMax;
	global.ammoStat = global.ammoMax / 50;
	global.laserStat = global.laserMax;
	global.cableStat = 7;
	
}