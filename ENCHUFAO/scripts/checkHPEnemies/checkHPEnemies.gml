// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function checkHPEnemies()
{
	if (checkHP = false)
	{
		if (global.spriteShip = splayer_Dark)
		{
			if (global.bonusIsUpgraded == true)
			{
				_hp-=3;
				
				if (_hp <= 0)
				{
					_hp = 1;
				}
			}
			else if (global.bonusIsUpgraded == false)
			{
				_hp-=1;
				
				if (_hp <= 0)
				{
					_hp = 1;
				}
			}
		}
		
		checkHP = true;
	}
}
