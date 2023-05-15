// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerStats_Dark()
{
	global.spriteShip = splayer_Dark;
		
	global.energyTotal = 200;
	global.energy = global.energyTotal;
	
	global.hpMax = 1;
	global.hp = 1;
	
	global.shieldsMax = 2;
	global.shields = 0;
	
	global.ammo = 400;
	global.ammoMax = 400;
	
	global._speed = 3.5;
	global.walkAcceleration = 0.15;
	
	global.energyStat = global.energyTotal / 50;
	global.speedStat = 6;
	global.hpStat = global.hpMax;
	global.ammoStat = global.ammoMax / 50;
	global.shieldStat = 2;
	global.cableStat = 3;
}