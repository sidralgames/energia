// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerStats_MP3()
{
	global.spriteShip = splayer_mp3;
	global.spritePart = s_bullet_part_BlueO;
	global.bulletPart_sprite = s_bullet_part_BlueO;
	
	global.textBonus = "More Powerful Amplifier Power";
		
	global.energyMax = 450;
	global.energy = global.energyMax;
	
	global.hpMax = 3;
	global.hp = 3;
	
	global.laserMax = 3;
	global.laser = 3;
	
	global.ammoMax = 100;
	global.ammo = global.ammoMax;
	
	global.bombAmmo = 2;
	
	global._speed = 3.35;
	global.walkAcceleration = 0.2;
	
	global.energyStat = (global.energyMax / 50)-2;;
	global.speedStat = 6;
	global.hpStat = global.hpMax;
	global.ammoStat = global.ammoMax / 50;
	global.laserStat = global.laserMax;
	global.cableStat = 4;
	
	//shields
	global.shields = 0;
	
	//Experimental
	global.accuracy =0.5;
	
}