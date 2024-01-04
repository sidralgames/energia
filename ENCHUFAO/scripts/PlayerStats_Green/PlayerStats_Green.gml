// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerStats_Green()
{
	global.spriteShip = splayer;
	global.spritePart = s_bullet_part_Green;
	global.bulletPart_sprite = s_bullet_part_Green;
	
	
	global.energyMax = 400;
	global.energy = global.energyMax;
	
	global.hpMax = 4;
	global.hp = 4;
	
	global.laserMax = 2;
	global.laser = 2;
	
	global.ammo = 150;
	global.ammoMax = 150;
	
	global.bombAmmo = 4;
	
	global._speed = 2.75;
	global.walkAcceleration = 0.2;
	
	global.energyStat = (global.energyMax / 50)-2;;
	global.speedStat = 4;
	global.hpStat = global.hpMax;
	global.ammoStat = global.ammoMax / 50;
	global.laserStat = global.laserMax;
	global.cableStat = 4;
	
	global.PETAAmmo = 3;
	
	global.ammoStatInitial = global.ammoStat;
	global.energyStatInitial = global.energyStat;
	global.HPStatInitial = global.hpStat;
	global.speedStatInitial = global.speedStat;
	global.cableStatInitial = global.cableStat;
	global.laserStatInitial = global.laserStat;
	
	//Experimental
	global.accuracy =0;
}