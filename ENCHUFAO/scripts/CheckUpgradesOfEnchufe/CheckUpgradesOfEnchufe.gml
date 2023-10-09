// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function CheckUpgradesOfEnchufe(argument0, argument1)
{
	for (var i = 0; i< argument1; i++)
	{
		mods = ds_map_find_value(argument0, i)
		if (mods.bouncingBullets == true)
		{
			global.bouncingBulletsIsOn = true;	
		}
		if (mods.piercingBullets == true)
		{
			global.piercingShot = true;	
		}
		if (mods.smartBullets == true)
		{
			global.bulletsAeSmartIsOn = true;	
		}
	}
}