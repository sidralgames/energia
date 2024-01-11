// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function CheckExploHitIsUpgraded()
{
	if (global.exploHitIsUpgraded = true)
	{
		if (tocado) && (explocreated = false)
		{
			explocreated = true;
			shock = instance_create(x,y,o_shockwaveTiles)
			ebomb = instance_create(x,y,o_exploBomb);
			ebomb.scale = 1.4;
			ebomb.scale = 1.4;
		}
	}
}