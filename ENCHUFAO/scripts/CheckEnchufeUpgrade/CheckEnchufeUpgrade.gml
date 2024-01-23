// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function CheckEnchufeUpgrade()
{
	if (upgraded = false)
	{
		switch(inEnchufe.thisUpgrade)
		{
			case "upgradeAmmo":
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
				
				global.ammoMax += 50;
				global.ammo = global.ammoMax;
				global.ammoStat+=1;
			
			}break;
			
			case "upgradeEnergy":
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
				
				global.energyMax += 50;
				global.energy = global.energyMax;
				global.energyStat+=1;
				
			}break;
			
			case "upgradeHP":
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
				
				global.hpMax += 1;
				global.hp = global.hpMax;
				global.hpStat+=1;
				
			}break;
			
			case "upgradeCharge":
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
				//-- DISCARD UPGRADE --//
				for (var i= 0; i< global.numberOfUpgrades; i++)
				{
					thisUpg = ds_map_find_value(global.upgradesList, i)
					if (thisUpg.obj = o_enchufeUpgadeCharge)
					{
						thisUpg.canShowUp = false;
					}
				}
		
				inEnchufe.charging = true;
				global.chargeTime += 0.5;
				
			}break;
			
			case "upgradeDischarge":
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
				//-- DISCARD UPGRADE --//
				for (var i= 0; i< global.numberOfUpgrades; i++)
				{
					thisUpg = ds_map_find_value(global.upgradesList, i)
					if (thisUpg.obj = o_enchufeUpgadeDischarge)
					{
						thisUpg.canShowUp = false;
					}
				}
				
				global.DischargeTime += 0.75;
				
			}break;
			
			case "upgradeSuperShot":
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

				global.superShot += 0.25;
				instance_destroy(o_partBalaP)
				instance_create_layer(-100,-100, "Part",o_partBalaP);
				
			}break;
			
			case "upgradeCable":
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
				
				global.cableStat+=1;
				instance_destroy(o_cable);
				instance_destroy(o_charger);
				instance_create_layer(x, y, "Cable", o_cable);
		
			}break;
			
			case "upgradeFireRate":
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
						//-- LOCK UPGRADE AFTER 3 TIMES --//
						if (upg.times = 3)
						{
							for (var i= 0; i< global.numberOfUpgrades; i++)
							{
								thisUpg = ds_map_find_value(global.upgradesList, i)
								if (thisUpg.obj = o_enchufeUpgadeFireRate)
								{
									thisUpg.canShowUp = false;
								}
							}
						}
					}
				}

				global.fireRate-=4;
				
			}break;
			
			case "upgradeLaserMax":
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

				global.laserMax += 1;
				global.laser = global.laserMax;
				global.laserStat+=1;
				
			}break;
			
			case "upgradeReReRe":
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
		
				//-- DISCARD UPGRADE --//
				for (var i= 0; i< global.numberOfUpgrades; i++)
				{
					thisUpg = ds_map_find_value(global.upgradesList, i)
					if (thisUpg.obj = o_enchufeUpgadeReReRe)
					{
						thisUpg.canShowUp = false;
					}
				}
		
				global.hp = global.hpMax;
				global.energy = global.energyMax;
				global.ammo = global.ammoMax;
				global.laser = global.laserMax;
				
				if (global.shields <= global.shieldsMax)
				{
					global.shields += 2;
				}
				else
				{
					global.shields = global.shieldsMax;	
				}
		
			}break;
			
			case "upgradeSpeed":
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

				global._speed += 0.5;
				global.speedStat+=1;
				
			}break;
			
			case "upgradeChargerShoots":
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
		
				//-- DISCARD UPGRADE --//
				for (var i= 0; i< global.numberOfUpgrades; i++)
				{
					thisUpg = ds_map_find_value(global.upgradesList, i)
					if (thisUpg.obj = o_enchufeUpgadeChargerShoots)
					{
						thisUpg.canShowUp = false;
					}
				}

				global.chargerShoots = true;
				
			}break;
			
			case "upgradeSlowMo":
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

				global.slowMoTimeMax += 50;
				global.slowMoTime = global.slowMoTimeMax;
		
			}break;
			
			case "upgradeOvercharge":
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
		
				//-- DISCARD UPGRADE --//
				for (var i= 0; i< global.numberOfUpgrades; i++)
				{
					thisUpg = ds_map_find_value(global.upgradesList, i)
					if (thisUpg.obj = o_enchufeUpgadeOvercharge)
					{
						thisUpg.canShowUp = false;
					}
				}

				global.overchargeTime-=0.1;
		
			}break;
			
			case "upgradeClusterBomb":
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
		
				//-- DISCARD UPGRADE --//
				for (var i= 0; i< global.numberOfUpgrades; i++)
				{
					thisUpg = ds_map_find_value(global.upgradesList, i)
					if (thisUpg.obj = o_enchufeUpgadeClusterBomb)
					{
						thisUpg.canShowUp = false;
					}
				}

				global.bombIsClusterBomb=true;
				
			}break;
			
			case "upgradeHomingBomb":
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
						//-- NEW UPGRADE CAN APPEAR AFTER --//
						for (var i= 0; i< global.numberOfUpgrades; i++)
						{
							thisUpg = ds_map_find_value(global.upgradesList, i)
							if (thisUpg.obj = o_enchufeUpgadeHomingBomb_Plus)
							{
								thisUpg.canShowUp = true;
							}
						}
					}
				}
				//-- DISCARD UPGRADE --//
				for (var i= 0; i< global.numberOfUpgrades; i++)
				{
					thisUpg = ds_map_find_value(global.upgradesList, i)
					if (thisUpg.obj = o_enchufeUpgadeHomingBomb)
					{
						thisUpg.canShowUp = false;
					}
				}

				global.bombIsHomingBomb=true;
		
			}break;
			
			case "upgradeHomingBomb_Plus":
			{
				if (!global.homingPlusIsUpgraded)
				{
					global.homingPlusIsUpgraded = true;
					AddUpgradeHomingPlusBombPlayer();
				}
				for (var i= 0; i< global.numberOfUpgradesPlayer; i++)
				{
					upg = ds_map_find_value(global.PlayerUpgradesList, i)
					if (upg.obj = o_enchufeUpgadeHomingBomb_Plus)
					{
						upg.times+=1;
					}
				}

				global.homingMissilesExtra+=2;
			}break;
			
			case "upgradeSmokeBomb":
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
					//-- DISCARD UPGRADE --//
				for (var i= 0; i< global.numberOfUpgrades; i++)
				{
					thisUpg = ds_map_find_value(global.upgradesList, i)
					if (thisUpg.obj = o_enchufeUpgadeSmokeBomb)
					{
						thisUpg.canShowUp = false;
					}
				}

				global.haveSmokeBomb=true;
				
			}break;
			
			case "upgradeLaser":
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
						//-- LOCK UPGRADE AFTER 2 TIMES --//
						if (upg.times = 2)
						{
							for (var i= 0; i< global.numberOfUpgrades; i++)
							{
								thisUpg = ds_map_find_value(global.upgradesList, i)
								if (thisUpg.obj = o_enchufeUpgadeLaser)
								{
									thisUpg.canShowUp = false;
								}
							}
						}
					}
				}
		
				global.laserDamage+=0.35;
				global.laserWidth+=2;
				
			}break;
			
			case "upgradeDobleDoble":
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
					//-- DISCARD UPGRADE --//
				for (var i= 0; i< global.numberOfUpgrades; i++)
				{
					thisUpg = ds_map_find_value(global.upgradesList, i)
					if (thisUpg.obj = o_enchufeUpgadeDobleDoble)
					{
						thisUpg.canShowUp = false;
					}
				}
			
				global.damageDealt = 2;
				global.damageReceived = 2;
			}break;
			
			case "upgradeFriend":
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
					//-- DISCARD UPGRADE --//
				for (var i= 0; i< global.numberOfUpgrades; i++)
				{
					thisUpg = ds_map_find_value(global.upgradesList, i)
					if (thisUpg.obj = o_enchufeUpgadeFriend)
					{
						thisUpg.canShowUp = false;
					}
				}
			}break;
			
			case "upgradeShootingRecharges":
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
					//-- DISCARD UPGRADE --//
				for (var i= 0; i< global.numberOfUpgrades; i++)
				{
					thisUpg = ds_map_find_value(global.upgradesList, i)
					if (thisUpg.obj = o_enchufeUpgadeShootingRecharges)
					{
						thisUpg.canShowUp = false;
					}
				}
		
				global.shootingRecharges = true;
			}break;
			
			case "upgradeRecoverBullet":
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
					//-- DISCARD UPGRADE --//
				for (var i= 0; i< global.numberOfUpgrades; i++)
				{
					thisUpg = ds_map_find_value(global.upgradesList, i)
					if (thisUpg.obj = o_enchufeUpgadeRecoverBullet)
					{
						thisUpg.canShowUp = false;
					}
				}
			}break;
			
			case "upgradeShockingPETAS":
			{
					if (!global.shockingPetasIsUpgraded)
					{
						global.shockingPetasIsUpgraded = true;
						AddUpgradeShockingPETASPlayer();
					}
					for (var i= 0; i< global.numberOfUpgradesPlayer; i++)
					{
						upg = ds_map_find_value(global.PlayerUpgradesList, i)
						if (upg.obj = o_enchufeUpgadeShockingPETAS)
						{
							upg.times+=1;
						}
					}
					//-- DISCARD UPGRADE --//
					for (var i= 0; i< global.numberOfUpgrades; i++)
					{
						thisUpg = ds_map_find_value(global.upgradesList, i)
						if (thisUpg.obj = o_enchufeUpgadeShockingPETAS)
						{
							thisUpg.canShowUp = false;
						}
					}
	
				}break;
		
			case "upgradeChargerElectro":
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
	
				//-- DISCARD UPGRADE --//
				for (var i= 0; i< global.numberOfUpgrades; i++)
				{
					thisUpg = ds_map_find_value(global.upgradesList, i)
					if (thisUpg.obj = o_enchufeUpgadeChargerElectrocutate)
					{
						thisUpg.canShowUp = false;
					}
				}
	
	
			}break;
		
			case "upgradeExploHit":
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
				//-- DISCARD UPGRADE --//
				for (var i= 0; i< global.numberOfUpgrades; i++)
				{
					thisUpg = ds_map_find_value(global.upgradesList, i)
					if (thisUpg.obj = o_enchufeUpgadeExploHit)
					{
						thisUpg.canShowUp = false;
					}
				}
	
	
			}break;
		
			case "upgradeBonus":
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
	
				//-- DISCARD UPGRADE --//
				for (var i= 0; i< global.numberOfUpgrades; i++)
				{
					thisUpg = ds_map_find_value(global.upgradesList, i)
					if (thisUpg.obj = o_enchufeUpgadeBonus)
					{
						thisUpg.canShowUp = false;
					}
				}

	
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

			}break;
		
		}
	
	inEnchufe.charging = true;
	upgraded = true;

	}
}