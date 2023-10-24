// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function RecoverBullet()
{
	if (global.recoverBulletIsUpgraded)
	{
		if (0 == irandom(2))
		{
			global.ammo+=1;
		}
	}
}