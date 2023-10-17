// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function AddUpgradeEnchufeHP()
{
	ds_map_add(global.enchufeHPUpgradesList, global.enchufeHPUpgradesNum,
	{ 
		bouncingBullets: false,
		piercingBullets: false,
		smartBullets: false,
		pushingBullets: false,
		shieldBullets: false,
		bifurcateBullets: false,
		dancingBullets: false,
		bombBullets: false,
		burnBullets: false,
		
	})

}