// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function CheckForUpgradeEnchufe(argument0, argument1)
{
	for (var i=0; i< argument1; i++)
	{
		mods = ds_map_find_value(argument0, i)
	
		if (mods.bouncingBullets == false) && (global.havePickedBouncingBullets)
		{
			mods.bouncingBullets = true;
			global.havePickedBouncingBullets = false;
		}
		if (mods.smartBullets == false) && (global.havePickedSmartBullets)
		{
			mods.smartBullets = true;
			global.havePickedSmartBullets = false;
		}
	}
}