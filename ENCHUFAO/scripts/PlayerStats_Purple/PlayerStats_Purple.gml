// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerStats_Purple()
{
	global.spriteShip = splayer_Purple;
	global.spritePart = s_playerShip_purple_part;
	global.bulletPart_sprite = s_bullet_part_Purple;
		
	global.energyMax = 450;
	global.energy = global.energyMax;
	
	global.hpMax = 4;
	global.hp = 4;
	
	global.laserMax = 2;
	global.laser = 2;
	
	global.bombAmmo = 2;
	
	global.ammo = 200;
	global.ammoMax = 200;
	
	global._speed = 3.15;
	global.walkAcceleration = 0.2;
	
	global.energyStat = global.energyMax/50;
	global.speedStat = 5;
	global.hpStat = global.hpMax;
	global.ammoStat = global.ammoMax / 50;
	global.laserStat = global.laserMax;
	global.cableStat = 3;
	
}