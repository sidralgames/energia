// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerStats_Blue()
{
	global.spriteShip = splayer_Blue;
	global.spritePart = s_bullet_part_Blue;
	global.bulletPart_sprite = s_bullet_part_Blue;
		
	global.energyMax = 300;
	global.energy = global.energyMax;
	
	global.hpMax = 2;
	global.hp = 2;
	
	global.laserMax = 4;
	global.laser = 4;
	
	global.ammo = 100;
	global.ammoMax = 100;
	
	global.bombAmmo = 2;
	
	
	global._speed = 3.5;
	global.walkAcceleration = 0.2;
	
	global.energyStat = global.energyMax / 50;
	global.speedStat = 7;
	global.hpStat = global.hpMax;
	global.ammoStat = global.ammoMax / 50;
	global.laserStat = global.laserMax;
	global.cableStat = 2;
	
}