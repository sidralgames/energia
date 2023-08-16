// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerStats_Green()
{
	global.spriteShip = splayer;
	global.spritePart = s_nave_part;
	global.bulletPart_sprite = s_bullet_part;
	
		
	global.energyTotal = 400;
	global.energy = global.energyTotal;
	
	global.hpMax = 5;
	global.hp = 5;
	
	global.shieldsMax = 2;
	global.shields = 0;
	
	global.ammo = 150;
	global.ammoMax = 150;
	
	global._speed = 3;
	global.walkAcceleration = 0.2;
	
	global.energyStat = global.energyTotal/50;
	global.speedStat = 4;
	global.hpStat = global.hpMax;
	global.ammoStat = global.ammoMax / 50;
	global.shieldStat = global.shieldsMax;
	global.cableStat = 4;
	
	
	global.ammoStatInitial = global.ammoStat;
	global.energyStatInitial = global.energyStat;
	global.HPStatInitial = global.hpStat;
	global.speedStatInitial = global.speedStat;
	global.cableStatInitial = global.cableStat;
	global.shieldStatInitial = global.shieldStat;
}