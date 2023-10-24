// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerStats_Dark()
{
	global.spriteShip = splayer_Dark;
	global.spritePart = s_bullet_part_Red;
	global.bulletPart_sprite = s_bullet_part_Red;
		
	global.energyMax = 300;
	global.energy = global.energyMax;
	
	global.hpMax = 3;
	global.hp = 3;
	
	global.laserMax = 3;
	global.laser = 3;
	
	global.ammo = 350;
	global.ammoMax = 350;
	
	global.bombAmmo = 2;
	
	global._speed = 3.5;
	global.walkAcceleration = 0.15;
	
	global.energyStat = global.energyMax / 50;
	global.speedStat = 6;
	global.hpStat = global.hpMax;
	global.ammoStat = global.ammoMax / 50;
	global.laserStat = global.laserMax;
	global.cableStat = 3;
	
	//Experimental
	global.accuracy =0;
}