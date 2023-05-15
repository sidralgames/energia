// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerStats_Blue()
{
	global.spriteShip = splayer_Blue;
		
	global.energyTotal = 350;
	global.energy = global.energyTotal;
	
	global.hpMax = 2;
	global.hp = 2;
	
	global.shieldsMax = 3;
	global.shields = 0;
	
	global.ammo = 100;
	global.ammoMax = 100;
	
	global._speed = 3.5;
	global.walkAcceleration = 0.2;
	
	global.energyStat = global.energyTotal/50;
	global.speedStat = 7;
	global.hpStat = 2;
	global.ammoStat = global.ammoMax / 50;
	global.shieldStat = 3;
	global.cableStat = 2;
	
}