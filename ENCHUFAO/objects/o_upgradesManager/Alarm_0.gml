/// @description Insert description here
// You can write your code in this editor
if (upgradesTotal < 4)
{
	upgradeChosen = ds_map_find_value(global.upgradesList,irandom(global.numberOfUpgrades-1));
		
	if (upgradeChosen.isPicked == false)
	{
		upgradeChosen.isPicked = true;
		upgradeChosen.timesPicked += 1;
		placeholder = instance_nearest(x,y,o_enchufePLACEHOLDER);
		upgradeCreated = instance_create_layer(placeholder.x, placeholder.y, "Enchufes", upgradeChosen.obj);
		
		if instance_exists(upgradeCreated)
		{
			upgradesTotal +=1;
			instance_destroy(placeholder);
		}
		
	}
}



