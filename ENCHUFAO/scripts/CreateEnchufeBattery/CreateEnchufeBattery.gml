// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function CreateEnchufeBattery()
{
	if (enchufe.upgradesBattery = 1)
		{
			xoffset = 0;
			yoffset = 20;
			var _c = dcos(inEnchufe._angle);
			var _s = dsin(inEnchufe._angle);
			var _x = inEnchufe.x - xoffset * _c - yoffset * _s;
			var _y = inEnchufe.y - xoffset * -_s - yoffset * _c;
		
			battery = instance_create_layer(_x,_y, "Enchufes", o_BatteryEnchufe);
			battery._sprite = _spriteBattery;
			battery.xoffset = xoffset;
			battery.yoffset = yoffset;
		
		}
	
		if (enchufe.upgradesBattery = 2)
		{
			xoffset = 12;
			yoffset = -17;
			var _c = dcos(inEnchufe._angle);
			var _s = dsin(inEnchufe._angle);
			var _x = inEnchufe.x - xoffset * _c - yoffset * _s;
			var _y = inEnchufe.y - xoffset * -_s - yoffset * _c;
		
			battery = instance_create_layer(_x,_y, "Enchufes", o_BatteryEnchufe);
			battery._sprite = _spriteBattery;
			battery.image_yscale=-1;
			battery.xoffset = xoffset;
			battery.yoffset = yoffset;
			battery.off_angle = -45;
		}
	
		if (enchufe.upgradesBattery = 3)
		{
			xoffset = -12;
			yoffset = -17;
			var _c = dcos(inEnchufe._angle);
			var _s = dsin(inEnchufe._angle);
			var _x = inEnchufe.x - xoffset * _c - yoffset * _s;
			var _y = inEnchufe.y - xoffset * -_s - yoffset * _c;
		
			battery = instance_create_layer(_x,_y, "Enchufes", o_BatteryEnchufe);
			battery._sprite = _spriteBattery;
			battery.image_yscale=-1;
			battery.xoffset = xoffset;
			battery.yoffset = yoffset;
			battery.off_angle = 45;
		
		}

}