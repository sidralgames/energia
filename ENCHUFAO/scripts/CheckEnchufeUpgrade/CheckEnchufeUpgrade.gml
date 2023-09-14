// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function CheckEnchufeUpgrade()
{
	if (inEnchufe.upgradeAmmo = true) && (upgraded = false)
	{
		if (!global.ammoIsUpgraded)
		{
			global.ammoIsUpgraded = true;
			AddUpgradeAmmoPlayer();
		}
		for (var i= 0; i< global.numberOfUpgradesPlayer; i++)
		{
			upg = ds_map_find_value(global.PlayerUpgradesList, i)
			if (upg.obj = o_enchufeUpgadeAmmo)
			{
				upg.times+=1;
			}
		}
		inEnchufe.charging = true;
		upgraded = true;
		global.ammoMax += 50;
		global.ammo = global.ammoMax;
		global.ammoStat+=1;
		
	}
	else if (inEnchufe.upgradeEnergy = true) && (upgraded = false)
	{
		if (!global.energyIsUpgraded)
		{
			global.energyIsUpgraded = true;
			AddUpgradeEnergyPlayer();
		}
		for (var i= 0; i< global.numberOfUpgradesPlayer; i++)
		{
			upg = ds_map_find_value(global.PlayerUpgradesList, i)
			if (upg.obj = o_enchufeUpgadeEnergy)
			{
				upg.times+=1;
			}
		}
		inEnchufe.charging = true;
		upgraded = true;
		global.energyTotal += 50;
		global.energy = global.energyTotal;
		global.energyStat+=1;
		
	}
	else if (inEnchufe.upgradeHP = true) && (upgraded = false)
	{
		if (!global.HPIsUpgraded)
		{
			global.HPIsUpgraded = true;
			AddUpgradeHPPlayer();
		}
		for (var i= 0; i< global.numberOfUpgradesPlayer; i++)
		{
			upg = ds_map_find_value(global.PlayerUpgradesList, i)
			if (upg.obj = o_enchufeUpgadeHP)
			{
				upg.times+=1;
			}
		}
		inEnchufe.charging = true;
		upgraded = true;
		global.hpMax += 1;
		global.hp = global.hpMax;
		global.hpStat+=1;
		
	}
	else if (inEnchufe.upgradeCharge = true) && (upgraded = false)
	{
		if (!global.fasterChargeIsUpgraded)
		{
			global.fasterChargeIsUpgraded = true;
			AddUpgradeFasterChargePlayer();
		}
		for (var i= 0; i< global.numberOfUpgradesPlayer; i++)
		{
			upg = ds_map_find_value(global.PlayerUpgradesList, i)
			if (upg.obj = o_enchufeUpgadeCharge)
			{
				upg.times+=1;
			}
		}
		inEnchufe.charging = true;
		upgraded = true;
		global.chargeTime += 0.5;
		
	}
	else if (inEnchufe.upgradeDischarge = true) && (upgraded = false)
	{
		if (!global.slowerDischargeIsUpgraded)
		{
			global.slowerDischargeIsUpgraded = true;
			AddUpgradeSlowerDischargePlayer();
		}
		for (var i= 0; i< global.numberOfUpgradesPlayer; i++)
		{
			upg = ds_map_find_value(global.PlayerUpgradesList, i)
			if (upg.obj = o_enchufeUpgadeDischarge)
			{
				upg.times+=1;
			}
		}
		inEnchufe.charging = true;
		upgraded = true;
		global.DischargeTime += 2;
		
	}
	else if (inEnchufe.upgradeSuperShot = true) && (upgraded = false)
	{
		if (!global.superShotIsUpgraded)
		{
			global.superShotIsUpgraded = true;
			AddUpgradeSuperShotPlayer();
		}
		for (var i= 0; i< global.numberOfUpgradesPlayer; i++)
		{
			upg = ds_map_find_value(global.PlayerUpgradesList, i)
			if (upg.obj = o_enchufeUpgadeSuperShot)
			{
				upg.times+=1;
			}
		}
		inEnchufe.charging = true;
		upgraded = true;
		global.superShot += 0.25;
		instance_destroy(o_partBalaP)
		instance_create(-100,-100,o_partBalaP);
		
	}
	else if (inEnchufe.upgradeCable = true) && (upgraded = false)
	{
		if (!global.cableIsUpgraded)
		{
			global.cableIsUpgraded = true;
			AddUpgradeLongerCablePlayer();
		}
		
		for (var i= 0; i< global.numberOfUpgradesPlayer; i++)
		{
			upg = ds_map_find_value(global.PlayerUpgradesList, i)
			if (upg.obj = o_enchufeUpgadeCable)
			{
				upg.times+=1;
			}
		}
		inEnchufe.charging = true;
		upgraded = true;
		global.cableStat+=1;
		instance_destroy(o_cable);
		instance_destroy(o_charger);
		instance_create(x,y,o_cable)
		

	}
	else if (inEnchufe.upgradeFireRate = true) && (upgraded = false)
	{
		if (!global.fireRateIsUpgraded)
		{
			global.fireRateIsUpgraded = true;
			AddUpgradeFireRatePlayer();
		}
		for (var i= 0; i< global.numberOfUpgradesPlayer; i++)
		{
			upg = ds_map_find_value(global.PlayerUpgradesList, i)
			if (upg.obj = o_enchufeUpgadeFireRate)
			{
				upg.times+=1;
			}
		}
		inEnchufe.charging = true;
		upgraded = true;
		global.fireRate-=4;
		
	}
	else if (inEnchufe.upgradeShield = true) && (upgraded = false)
	{
		if (!global.shieldsIsUpgraded)
		{
			global.shieldsIsUpgraded = true;
			AddUpgradeShieldsPlayer();
		}
		for (var i= 0; i< global.numberOfUpgradesPlayer; i++)
		{
			upg = ds_map_find_value(global.PlayerUpgradesList, i)
			if (upg.obj = o_enchufeUpgadeShields)
			{
				upg.times+=1;
			}
		}
		inEnchufe.charging = true;
		upgraded = true;
		global.laserMax += 1;
		global.laser = global.laserMax;
		global.shieldStat+=1;
		
	}
	else if (inEnchufe.upgradeReReRe = true) && (upgraded = false)
	{
		if (!global.rerereIsUpgraded)
		{
			global.rerereIsUpgraded = true;
			AddUpgradeReReRePlayer();
		}
		for (var i= 0; i< global.numberOfUpgradesPlayer; i++)
		{
			upg = ds_map_find_value(global.PlayerUpgradesList, i)
			if (upg.obj = o_enchufeUpgadeReReRe)
			{
				upg.times+=1;
			}
		}
		inEnchufe.charging = true;
		upgraded = true;
		global.hp = global.hpMax;
		global.energy = global.energyTotal;
		global.ammo = global.ammoMax;
		global.laser = global.laserMax;
		
	}
	else if (inEnchufe.upgradeSpeed = true) && (upgraded = false)
	{
		if (!global.speedIsUpgraded)
		{
			AddUpgradeSpeedUpPlayer();
			global.speedIsUpgraded = true;
		}
		for (var i= 0; i< global.numberOfUpgradesPlayer; i++)
		{
			upg = ds_map_find_value(global.PlayerUpgradesList, i)
			if (upg.obj = o_enchufeUpgadeSpeedUp)
			{
				upg.times+=1;
			}
		}
		inEnchufe.charging = true;
		upgraded = true;
		global._speed += 0.5;
		global.speedStat+=1;
		
	}
	else if (inEnchufe.upgradeChargerShoots = true) && (upgraded = false)
	{
		if (!global.chargerShootsIsUpgraded)
		{
			global.chargerShootsIsUpgraded = true;
			AddUpgradeChargerShootsPlayer();
		}
		for (var i= 0; i< global.numberOfUpgradesPlayer; i++)
		{
			upg = ds_map_find_value(global.PlayerUpgradesList, i)
			if (upg.obj = o_enchufeUpgadeChargerShoots)
			{
				upg.times+=1;
			}
		}
		inEnchufe.charging = true;
		upgraded = true;
		global.chargerShoots = true;
		
	}
	else if (inEnchufe.upgradeSlowMo = true) && (upgraded = false)
	{
		if (!global.slowMoIsUpgraded)
		{
			global.slowMoIsUpgraded = true;
			AddUpgradeSlowMoPlayer();
		}
		for (var i= 0; i< global.numberOfUpgradesPlayer; i++)
		{
			upg = ds_map_find_value(global.PlayerUpgradesList, i)
			if (upg.obj = o_enchufeUpgadeSlowMo)
			{
				upg.times+=1;
			}
		}
		inEnchufe.charging = true;
		upgraded = true;
		global.slowMoTimeMax += 50;
		global.slowMoTime = global.slowMoTimeMax;
		
	}
	else if (inEnchufe.upgradeOvercharge = true) && (upgraded = false)
	{
		if (!global.overchargeIsUpgraded)
		{
			global.overchargeIsUpgraded = true;
			AddUpgradeOverchargePlayer();
		}
		for (var i= 0; i< global.numberOfUpgradesPlayer; i++)
		{
			upg = ds_map_find_value(global.PlayerUpgradesList, i)
			if (upg.obj = o_enchufeUpgadeOvercharge)
			{
				upg.times+=1;
			}
		}
		inEnchufe.charging = true;
		upgraded = true;
		global.overchargeTime-=0.3;
		
	}
	else if (inEnchufe.upgradeClusterBomb = true) && (upgraded = false)
	{
		if (!global.clusterIsUpgraded)
		{
			global.clusterIsUpgraded = true;
			AddUpgradeClusterBombPlayer();
		}
		for (var i= 0; i< global.numberOfUpgradesPlayer; i++)
		{
			upg = ds_map_find_value(global.PlayerUpgradesList, i)
			if (upg.obj = o_enchufeUpgadeClusterBomb)
			{
				upg.times+=1;
			}
		}
		inEnchufe.charging = true;
		upgraded = true;
		global.bombIsClusterBomb=true;
		
	}
	else if (inEnchufe.upgradeLaser = true) && (upgraded = false)
	{
		if (!global.laserIsUpgraded)
		{
			global.laserIsUpgraded = true;
			AddUpgradeLaserPlayer();
		}
		for (var i= 0; i< global.numberOfUpgradesPlayer; i++)
		{
			upg = ds_map_find_value(global.PlayerUpgradesList, i)
			if (upg.obj = o_enchufeUpgadeLaser)
			{
				upg.times+=1;
			}
		}
		
		inEnchufe.charging = true;
		upgraded = true;
		global.laserDamage+=0.5;
		global.laserWidth+=3;
		
	}
}