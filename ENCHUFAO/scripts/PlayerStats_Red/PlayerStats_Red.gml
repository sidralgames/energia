// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerStats_Red()
{
	global.spriteShip = splayer_Red;
	global.spritePart = s_bullet_part_Orange;
	global.bulletPart_sprite = s_bullet_part_Orange;
		
	global.energyMax = 250;
	global.energy = global.energyMax;
	
	global.hpMax = 5;
	global.hp = 5;
	
	global.laserMax = 1;
	global.laser = 1;
	
	global.bombAmmo = 2;
	
	global.ammo = 250;
	global.ammoMax = 250;
	
	global._speed = 2.15;
	global.walkAcceleration = 0.11;
	
	global.energyStat = global.energyMax/50;
	global.speedStat = 2;
	global.hpStat = global.hpMax;
	global.ammoStat = global.ammoMax / 50;
	global.laserStat = global.laserMax;
	global.cableStat = 5;
	//Experimental
	global.accuracy =1;
}