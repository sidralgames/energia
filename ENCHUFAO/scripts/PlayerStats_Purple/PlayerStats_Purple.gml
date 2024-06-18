// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerStats_Purple()
{
	global.spriteShip = splayer_Purple;
	global.spritePart = s_playerShip_purple_part;
	global.bulletPart_sprite = s_bullet_part_Purple;
		
	global.energyMax = 300;
	global.energy = global.energyMax;
	
	global.textBonus = "Even Faster During SlowMo";
	
	global.hpMax = 4;
	global.hp = global.hpMax;
	
	global.laserMax = 2;
	global.laser = global.laserMax ;
	
	global.bombAmmo = 2;
	
	
	global.ammoMax = 300;
	global.ammo = global.ammoMax;
	
	global._speed = 3.15;
	global.walkAcceleration = 0.2;
	
	global.energyStat = (global.energyMax / 50)-2;;
	global.speedStat = 5;
	global.hpStat = global.hpMax;
	global.ammoStat = global.ammoMax / 50;
	global.laserStat = global.laserMax;
	global.cableStat = 3;
	
	//shields
	global.shields = 0;
	
	//Experimental
	global.accuracy =1;
	
}