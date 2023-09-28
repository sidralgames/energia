// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function CreateStrandedShip()
{
	cx = 1*width_ div 2;
	cy = 1*height_ div 2;
	
	if (global.spriteShip = splayer_Red)
	{
		if (global.bonusIsUpgraded)
		{
			CreateStrandedShipBonusUpgraded();
		}
		else
		{
			CreateStrandedShipStandard();
		}
	}
	else
	{
		CreateStrandedShipStandard();
	}
	
}