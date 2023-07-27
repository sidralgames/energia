// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function CheckEnchufeUpgrade()
{
	if (inEnchufe.upgradeAmmo = true) && (upgraded = false)
	{
		inEnchufe.charging = true;
		upgraded = true;
		global.ammoMax += 50;
		global.ammo = global.ammoMax;
	}
	else if (inEnchufe.upgradeEnergy = true) && (upgraded = false)
	{
		inEnchufe.charging = true;
		upgraded = true;
		global.energyTotal += 50;
		global.energy = global.energyTotal;
	}
	else if (inEnchufe.upgradeHP = true) && (upgraded = false)
	{
		inEnchufe.charging = true;
		upgraded = true;
		global.hpMax += 1;
		global.hp = global.hpMax;
	}
	else if (inEnchufe.upgradeCharge = true) && (upgraded = false)
	{
		inEnchufe.charging = true;
		upgraded = true;
		global.chargeTime += 0.5;
	}
	else if (inEnchufe.upgradeDischarge = true) && (upgraded = false)
	{
		inEnchufe.charging = true;
		upgraded = true;
		global.DischargeTime += 2;
	}
	else if (inEnchufe.upgradeSuperShot = true) && (upgraded = false)
	{
		inEnchufe.charging = true;
		upgraded = true;
		global.superShot += 0.25;
		instance_destroy(o_partBalaP)
		instance_create(-100,-100,o_partBalaP)
	}
	else if (inEnchufe.upgradeCable = true) && (upgraded = false)
	{
		inEnchufe.charging = true;
		upgraded = true;
		global.cableStat+=1;
		instance_destroy(o_cable);
		instance_destroy(o_charger);
		instance_create(x,y,o_cable)

	}
	else if (inEnchufe.upgradeFireRate = true) && (upgraded = false)
	{
		inEnchufe.charging = true;
		upgraded = true;
		global.fireRate-=4;
	}
	else if (inEnchufe.upgradeShield = true) && (upgraded = false)
	{
		inEnchufe.charging = true;
		upgraded = true;
		global.shieldsMax += 1;
		global.shields = global.shieldsMax;
	}
	else if (inEnchufe.upgradeReReRe = true) && (upgraded = false)
	{
		inEnchufe.charging = true;
		upgraded = true;
		global.hp = global.hpMax;
		global.energy = global.energyTotal;
		global.ammo = global.ammoMax;
		global.shields = global.shieldsMax;
	}
	else if (inEnchufe.upgradeSpeed = true) && (upgraded = false)
	{
		inEnchufe.charging = true;
		upgraded = true;
		global._speed += 0.5;
	}
	else if (inEnchufe.upgradeChargerShoots = true) && (upgraded = false)
	{
		inEnchufe.charging = true;
		upgraded = true;
		global.chargerShoots = true;
	}
	else if (inEnchufe.upgradeSlowMo = true) && (upgraded = false)
	{
		inEnchufe.charging = true;
		upgraded = true;
		global.slowMoTimeMax += 50;
		global.slowMoTime = global.slowMoTimeMax;
	}
}