// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function CheckUpgradesOfEnchufe(argument0, argument1)
{
	for (var i = 0; i< 1; i++)
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
			global.bulletsAreSmartIsOn = true;	
		}
		if (mods.pushingBullets == true)
		{
			global.bulletsPushenemiesIsOn = true;	
		}
		if (mods.bombBullets == true)
		{
			global.bulletsAreBombs = true;	
		}
		if (mods.bifurcateBullets == true)
		{
			global.bulletsBifurcateIsOn = true;	
		}
		if (mods.burnBullets == true)
		{
			global.bulletsBurnIsOn = true;	
		}
		if (mods.electroBullets == true)
		{
			global.bulletsElectroIsOn = true;	
		}
		if (mods.ghostBullets == true)
		{
			global.bulletsGhostIsOn = true;	
		}
	}
}