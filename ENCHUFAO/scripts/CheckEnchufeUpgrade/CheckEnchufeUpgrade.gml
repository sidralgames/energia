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
		global.energyMax += 50;
		global.energy = global.energyMax;
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
		global.DischargeTime += 0.75;
		
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
		instance_create_layer(-100,-100, "Part",o_partBalaP);
		
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
		instance_create_layer(x, y, "Cable", o_cable)
		

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
	else if (inEnchufe.upgradeLaserMax = true) && (upgraded = false)
	{
		if (!global.laserMaxIsUpgraded)
		{
			global.laserMaxIsUpgraded = true;
			AddUpgradeLaserMaxPlayer();
		}
		for (var i= 0; i< global.numberOfUpgradesPlayer; i++)
		{
			upg = ds_map_find_value(global.PlayerUpgradesList, i)
			if (upg.obj = o_enchufeUpgadeLaserMax)
			{
				upg.times+=1;
			}
		}
		inEnchufe.charging = true;
		upgraded = true;
		global.laserMax += 1;
		global.laser = global.laserMax;
		global.laserStat+=1;
		
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
		global.energy = global.energyMax;
		global.ammo = global.ammoMax;
		global.laser = global.laserMax;
		if (global.shields <= 8)
		{
			global.shields += 2;
		}
		else
		{
			global.shields = global.shieldsMax;	
		}
		
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
		global.overchargeTime-=0.1;
		
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
	else if (inEnchufe.upgradeHomingBomb = true) && (upgraded = false)
	{
		if (!global.homingIsUpgraded)
		{
			global.homingIsUpgraded = true;
			AddUpgradeHomingBombPlayer();
		}
		for (var i= 0; i< global.numberOfUpgradesPlayer; i++)
		{
			upg = ds_map_find_value(global.PlayerUpgradesList, i)
			if (upg.obj = o_enchufeUpgadeHomingBomb)
			{
				upg.times+=1;
			}
		}
		inEnchufe.charging = true;
		upgraded = true;
		global.bombIsHomingBomb=true;
		
	}
	else if (inEnchufe.upgradeSmokeBomb = true) && (upgraded = false)
	{
		if (!global.smokeIsUpgraded)
		{
			global.smokeIsUpgraded = true;
			AddUpgradeSmokeBombPlayer();
		}
		for (var i= 0; i< global.numberOfUpgradesPlayer; i++)
		{
			upg = ds_map_find_value(global.PlayerUpgradesList, i)
			if (upg.obj = o_enchufeUpgadeSmokeBomb)
			{
				upg.times+=1;
			}
		}
		inEnchufe.charging = true;
		upgraded = true;
		global.haveSmokeBomb=true;
		
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
		global.laserWidth+=2;
		
	}
	else if (inEnchufe.upgradeDobleDoble = true) && (upgraded = false)
	{
		if (!global.dobleDobleIsUpgraded)
		{
			global.dobleDobleIsUpgraded = true;
			AddUpgradeDobleDoblePlayer();
		}
		for (var i= 0; i< global.numberOfUpgradesPlayer; i++)
		{
			upg = ds_map_find_value(global.PlayerUpgradesList, i)
			if (upg.obj = o_enchufeUpgadeDobleDoble)
			{
				upg.times+=1;
			}
		}
		
		inEnchufe.charging = true;
		upgraded = true;
		
		global.damageDealt = 2;
		global.damageReceived = 2;
		
	}
	else if (inEnchufe.upgradeFriend = true) && (upgraded = false)
	{
		if (!global.friendIsUpgraded)
		{
			global.friendIsUpgraded = true;
			instance_create_layer(o_playerShip.x+30, o_playerShip.y-30, "Player", o_friend)
			AddUpgradeFriendPlayer();
		}
		for (var i= 0; i< global.numberOfUpgradesPlayer; i++)
		{
			upg = ds_map_find_value(global.PlayerUpgradesList, i)
			if (upg.obj = o_enchufeUpgadeFriend)
			{
				upg.times+=1;
			}
		}
		
		inEnchufe.charging = true;
		upgraded = true;
		
	}
	else if (inEnchufe.upgradeShootingRecharges = true) && (upgraded = false)
	{
		if (!global.shootingRechargesIsUpgraded)
		{
			global.shootingRechargesIsUpgraded = true;
			AddUpgradeShootingRechargesPlayer();
		}
		for (var i= 0; i< global.numberOfUpgradesPlayer; i++)
		{
			upg = ds_map_find_value(global.PlayerUpgradesList, i)
			if (upg.obj = o_enchufeUpgadeShootingRecharges)
			{
				upg.times+=1;
			}
		}
		
		global.shootingRecharges = true;
		inEnchufe.charging = true;
		upgraded = true;
		
	}
	else if (inEnchufe.upgradeRecoverBullet = true) && (upgraded = false)
	{
		if (!global.recoverBulletIsUpgraded)
		{
			global.recoverBulletIsUpgraded = true;
			AddUpgradeRecoverBulletPlayer();
		}
		for (var i= 0; i< global.numberOfUpgradesPlayer; i++)
		{
			upg = ds_map_find_value(global.PlayerUpgradesList, i)
			if (upg.obj = o_enchufeUpgadeRecoverBullet)
			{
				upg.times+=1;
			}
		}
		
		inEnchufe.charging = true;
		upgraded = true;
		
	}
	else if (inEnchufe.upgradeChargerElectro = true) && (upgraded = false)
	{
		if (!global.chargerElectrocutatesIsUpgraded)
		{
			global.chargerElectrocutatesIsUpgraded = true;
			AddUpgradeChargerElectroPlayer();
		}
		for (var i= 0; i< global.numberOfUpgradesPlayer; i++)
		{
			upg = ds_map_find_value(global.PlayerUpgradesList, i)
			if (upg.obj = o_enchufeUpgadeChargerElectrocutate)
			{
				upg.times+=1;
			}
		}
		
		inEnchufe.charging = true;
		upgraded = true;
		
	}
	else if (inEnchufe.upgradeExploHit = true) && (upgraded = false)
	{
		if (!global.exploHitIsUpgraded)
		{
			global.exploHitIsUpgraded = true;
			AddUpgradeExploHitPlayer();
		}
		for (var i= 0; i< global.numberOfUpgradesPlayer; i++)
		{
			upg = ds_map_find_value(global.PlayerUpgradesList, i)
			if (upg.obj = o_enchufeUpgadeExploHit)
			{
				upg.times+=1;
			}
		}
		
		inEnchufe.charging = true;
		upgraded = true;
		
	}
	else if (inEnchufe.upgradeBonus = true) && (upgraded = false)
	{
		if (!global.bonusIsUpgraded)
		{
			global.bonusIsUpgraded = true;
			AddUpgradeBonusPlayer();
		}
		for (var i= 0; i< global.numberOfUpgradesPlayer; i++)
		{
			upg = ds_map_find_value(global.PlayerUpgradesList, i)
			if (upg.obj = o_enchufeUpgadeBonus)
			{
				upg.times+=1;
			}
		}
	
		inEnchufe.charging = true;
		upgraded = true;
		
		if (global.spriteShip = splayer)
		{
			global.shipGreenBonusUpgraded = true;
		}
		else if (global.spriteShip = splayer_Blue)
		{
			global.shipBlueBonusUpgraded = true;
		}
		else if (global.spriteShip = splayer_Red)
		{
			global.shipRedBonusUpgraded = true;
		}
		else if (global.spriteShip = splayer_Dark)
		{
			global.shipDarkBonusUpgraded = true;
		}
		else if (global.spriteShip = splayer_Purple)
		{
			global.relativeFastSpeed += 0.3;
			global.shipPurpleBonusUpgraded = true;
		}
		else if (global.spriteShip = splayer_mp3)
		{
			global.shipMP3BonusUpgraded = true;
		}
		
	}
}