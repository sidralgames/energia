/// @description Insert description here
// You can write your code in this editor
for (var i = 0; i < global.numberOfUpgrades-1; i++)
{
	upgrades = ds_map_find_value(global.upgradesList,i);
	if (upgrades.unique == false)
	{
		upgrades.isPicked = false;
	}
}




