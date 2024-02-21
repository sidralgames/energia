// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerStats_Dark()
{
	global.spriteShip = splayer_Dark;
	global.spritePart = s_bullet_part_Red;
	global.bulletPart_sprite = s_bullet_part_Red;
	
	global.textBonus = "All Enemies Have -3 HP";
	
	global.energyMax = 450;
	global.energy = global.energyMax;
	
	global.hpMax = 3;
	global.hp = 3;
	
	global.laserMax = 2;
	global.laser = 2;
	
	global.ammo = 350;
	global.ammoMax = 350;
	
	global.bombAmmo = 2;
	
	global._speed = 3.6;
	global.walkAcceleration = 0.15;
	
	global.energyStat = (global.energyMax / 50)-2;
	global.speedStat = 5;
	global.hpStat = global.hpMax;
	global.ammoStat = global.ammoMax / 50;
	global.laserStat = global.laserMax;
	global.cableStat = 3;
	
	//shields
	global.shields = 0;
	
	//Experimental
	global.accuracy =0;
}