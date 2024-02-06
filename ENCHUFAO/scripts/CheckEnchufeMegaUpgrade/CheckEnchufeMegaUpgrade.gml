// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function CheckEnchufeMegaUpgrade()
{
	if (upgraded = false)
	{
		switch(inEnchufe.thisMegaUpgrade)
		{
			case "megaUpgradeInvisible":
			{
				//if (!global.invisibleIsMegaUpgraded)
				//{
				//	global.invisibleIsMegaUpgraded = true;
				//	AddUpgradeOverchargePlayer();
				//}
				
				//for (var i= 0; i< global.numberOfUpgradesPlayer; i++)
				//{
				//	upg = ds_map_find_value(global.PlayerUpgradesList, i)
				//	if (upg.obj = o_enchufeUpgadeOvercharge)
				//	{
				//		upg.times+=1;
				//	}
				//}
		
				//-- DISCARD UPGRADE --//
				for (var i= 0; i< global.numberOfMegaUpgrades; i++)
				{
					thisUpg = ds_map_find_value(global.megaUpgradesList, i)
					if (thisUpg.obj = o_enchufeMegaUpgrade_Invisible)
					{
						thisUpg.canShowUp = false;
					}
				}

				global.haveInvisibiltyCloak = true;
		
			}break;	
			
			case "megaUpgradeCavalry":
			{
				//if (!global.invisibleIsMegaUpgraded)
				//{
				//	global.invisibleIsMegaUpgraded = true;
				//	AddUpgradeOverchargePlayer();
				//}
				
				//for (var i= 0; i< global.numberOfUpgradesPlayer; i++)
				//{
				//	upg = ds_map_find_value(global.PlayerUpgradesList, i)
				//	if (upg.obj = o_enchufeUpgadeOvercharge)
				//	{
				//		upg.times+=1;
				//	}
				//}
		
				//-- DISCARD UPGRADE --//
				for (var i= 0; i< global.numberOfMegaUpgrades; i++)
				{
					thisUpg = ds_map_find_value(global.megaUpgradesList, i)
					if (thisUpg.obj = o_enchufeMegaUpgrade_Cavalry)
					{
						thisUpg.canShowUp = false;
					}
				}

				global.haveCallForHelp = true;
		
			}break;	
			
			case "megaUpgradePetas":
			{
				//if (!global.invisibleIsMegaUpgraded)
				//{
				//	global.invisibleIsMegaUpgraded = true;
				//	AddUpgradeOverchargePlayer();
				//}
				
				//for (var i= 0; i< global.numberOfUpgradesPlayer; i++)
				//{
				//	upg = ds_map_find_value(global.PlayerUpgradesList, i)
				//	if (upg.obj = o_enchufeUpgadeOvercharge)
				//	{
				//		upg.times+=1;
				//	}
				//}
		
				//-- DISCARD UPGRADE --//
				for (var i= 0; i< global.numberOfMegaUpgrades; i++)
				{
					thisUpg = ds_map_find_value(global.megaUpgradesList, i)
					if (thisUpg.obj = o_enchufeMegaUpgrade_Petas)
					{
						thisUpg.canShowUp = false;
					}
				}

				global.allPETAisMulti = true;
		
			}break;	
			
			case "megaUpgradeExternalBattery":
			{
				//-- DISCARD UPGRADE --//
				for (var i= 0; i< global.numberOfMegaUpgrades; i++)
				{
					thisUpg = ds_map_find_value(global.megaUpgradesList, i)
					if (thisUpg.obj = o_enchufeMegaUpgrade_ExternalBattery)
					{
						thisUpg.canShowUp = false;
					}
				}

				global.haveExternalBattery = true;
				
			}break;	
			
			case "megaUpgradeHP":
			{
				//-- DISCARD UPGRADE --//
				for (var i= 0; i< global.numberOfMegaUpgrades; i++)
				{
					thisUpg = ds_map_find_value(global.megaUpgradesList, i)
					if (thisUpg.obj = o_enchufeMegaUpgrade_HP)
					{
						thisUpg.canShowUp = false;
					}
				}

				global.hpMax +=3;
				global.hp += 3;
				
			}break;	
		
		}
	
	inEnchufe.charging = true;
	upgraded = true;

	}
}