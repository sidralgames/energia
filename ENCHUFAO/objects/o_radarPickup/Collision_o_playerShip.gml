/// @description Insert description here
// You can write your code in this editor
switch(image_index)
{
	case 0:
	{
		if (global.radarIsOn = false)
		{
			global.radarIsOn = true;
		}
		global.energyRadar = true;
		
		banner = instance_create_layer(o_playerShip.x, o_playerShip.y -30, "Player", o_radarBanner)
		banner.sprite_index = s_bannerEnergyRadar;
		
	}break;
	
	case 1:
	{
		if (global.radarIsOn = false)
		{
			global.radarIsOn = true;
		}
		global.hpRadar = true;
		
		banner = instance_create_layer(o_playerShip.x, o_playerShip.y -30, "Player", o_radarBanner)
		banner.sprite_index = s_bannerHPRadar;
		
	}break; 
	
	case 2:
	{
		if (global.radarIsOn = false)
		{
			global.radarIsOn = true;
		}
		global.ammoRadar = true;
		
		banner = instance_create_layer(o_playerShip.x, o_playerShip.y -30, "Player", o_radarBanner)
		banner.sprite_index = s_bannerAmmoRadar;
		
	}break;
	
	case 3:
	{
		if (global.radarIsOn = false)
		{
			global.radarIsOn = true;
		}
		global.laserRadar = true;
		
		banner = instance_create_layer(o_playerShip.x, o_playerShip.y -30, "Player", o_radarBanner)
		banner.sprite_index = s_bannerLaserRadar;
		
	}break;
}

instance_destroy();







