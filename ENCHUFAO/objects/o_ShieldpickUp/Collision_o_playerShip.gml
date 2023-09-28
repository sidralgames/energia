/// @description Insert description here
// You can write your code in this editor
if (global.shields < global.shieldsMax)
{
	if (global.spriteShip = splayer_Blue)
	{
		if (global.bonusIsUpgraded)
		{
			global.shields +=3;
		}
		else
		{
			global.shields +=2;
		}
	}
	else
	{
		global.shields +=1;
	}
	instance_destroy();
}






