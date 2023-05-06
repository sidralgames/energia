/// @description Insert description here
// You can write your code in this editor

if (key_x)
{
	if (plugged = false)
	{
		plugged = true;
		global.plugging = true;
		global.xToPlug = other.x;
		global.yToPlug = other.y;
		
		if (other.hp = true)
		{
			global.chargingHp = true;	
		}
		else if (other.shield = true)
		{
			global.chargingShield= true;	
		}
		else if (other.ammo = true)
		{
			global.chargingAmmo = true;	
		}
	}
}



