/// @description Insert description here
// You can write your code in this editor






// Inherit the parent event
event_inherited();

upgradesBattery = global.EnchufeLaserUpgradesBattery;

laser = true;
sprite_enchufePluged = s_enchufe_SHIELDS_Bat_Charged;

if (global.level > 2)
{
	if (irandom(oddsEnemy) = oddsEnemy)
	{
		instance_create_layer(x,y, "Enemies",choose(o_enemyEnchufeMisil, o_enemyEnchufeMisil_v2));
	}
}


	for (var i=0; i< global.batteryEnchufeListLasernum; i++)
	{
		batSprite = ds_map_find_value(global.batteryEnchufeListLaser, i)
		if (i = 0)
		{
			xoffset = 0;
			yoffset = 20;
			var _c = dcos(_angle);
			var _s = dsin(_angle);
			var _x = x - xoffset * _c - yoffset * _s;
			var _y = y - xoffset * -_s - yoffset * _c;
		
			battery = instance_create_layer(_x,_y, "Enchufes", o_BatteryEnchufe);
			battery._sprite = batSprite.sprite;
			battery.xoffset = xoffset;
			battery.yoffset = yoffset;
		
		}
	
		if (i = 1)
		{
			xoffset = 11;
			yoffset = -16;
			var _c = dcos(_angle);
			var _s = dsin(_angle);
			var _x = x - xoffset * _c - yoffset * _s;
			var _y = y - xoffset * -_s - yoffset * _c;
	
			battery = instance_create_layer(_x,_y, "Enchufes", o_BatteryEnchufe);
			battery._sprite = batSprite.sprite;
			battery.xoffset = xoffset;
			battery.yoffset = yoffset;
			battery.off_angle = -45;
		}
	
		if (i = 2)
		{
			xoffset = -11;
			yoffset = -16;
			var _c = dcos(_angle);
			var _s = dsin(_angle);
			var _x = x - xoffset * _c - yoffset * _s;
			var _y = y - xoffset * -_s - yoffset * _c;
	
			battery = instance_create_layer(_x,_y, "Enchufes", o_BatteryEnchufe);
			battery._sprite = batSprite.sprite;
			battery.xoffset = xoffset;
			battery.yoffset = yoffset;
			battery.off_angle = 45;
		
		}
	}
	


