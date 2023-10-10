// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function CheckForUpgradeEnchufe(argument0, argument1)
{
	
	for (var i=0; i< 1; i++)
	{
		mods = ds_map_find_value(argument0, i)
	
		if (mods.bouncingBullets == false) && (global.havePickedBouncingBullets)
		{
			inEnchufe.upgradesBattery+=1;
			mods.bouncingBullets = true;
			global.havePickedBouncingBullets = false;
			
		}
		if (mods.smartBullets == false) && (global.havePickedSmartBullets)
		{
			inEnchufe.upgradesBattery+=1;
			mods.smartBullets = true;
			global.havePickedSmartBullets = false;
		
		}
		if (mods.piercingBullets == false) && (global.havePickedPiercingBullets)
		{
			inEnchufe.upgradesBattery+=1;
			mods.piercingBullets = true;
			global.havePickedPiercingBullets = false;
			
		}
		if (mods.bombBullets == false) && (global.havePickedExploBullets)
		{
			inEnchufe.upgradesBattery+=1;
			mods.bombBullets = true;
			global.havePickedExploBullets = false;
			
		}
		if (mods.bifurcateBullets == false) && (global.havePickedSplitBullets)
		{
			inEnchufe.upgradesBattery+=1;
			mods.bifurcateBullets = true;
			global.havePickedSplitBullets = false;
			
		}
		if (mods.pushingBullets == false) && (global.havePickedPushingBullets)
		{
			inEnchufe.upgradesBattery+=1;
			mods.pushingBullets = true;
			global.havePickedPushingBullets = false;
			
		}
	}
}