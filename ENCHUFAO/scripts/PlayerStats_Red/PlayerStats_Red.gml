// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerStats_Red()
{
	global.spriteShip = splayer_Red;
	global.spritePart = s_bullet_partTorreta;
	global.bulletPart_sprite = s_bullet_part;
		
	global.energyTotal = 250;
	global.energy = global.energyTotal;
	
	global.hpMax = 6;
	global.hp = 6;
	
	global.shieldsMax = 1;
	global.shields = 0;
	
	global.ammo = 300;
	global.ammoMax = 300;
	
	global._speed = 2.5;
	global.walkAcceleration = 0.07;
	
	global.energyStat = global.energyTotal/50;
	global.speedStat = 2;
	global.hpStat = 6;
	global.ammoStat = global.ammoMax / 50;
	global.shieldStat = 1;
	global.cableStat = 5;
}