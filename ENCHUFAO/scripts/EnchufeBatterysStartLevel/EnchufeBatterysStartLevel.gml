// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function EnchufeBatterysStartLevel()
{
	if (i = 0)
	{
		xoffset = 0;
		yoffset = 20;
		var _c = dcos(_angle);
		var _s = dsin(_angle);
		var _x = x - xoffset * _c - yoffset * _s;
		var _y = y - xoffset * -_s - yoffset * _c;
	
		battery = instance_create_layer(_x,_y, "Enchufes", o_BatteryEnchufe);
		battery.image_yscale=-1;
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
		battery.image_yscale=-1;
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
		battery.image_yscale=-1;
		battery.xoffset = xoffset;
		battery.yoffset = yoffset;
		battery.off_angle = 45;
		
	}
}