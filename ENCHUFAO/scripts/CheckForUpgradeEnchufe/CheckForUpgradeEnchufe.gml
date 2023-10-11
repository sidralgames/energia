// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function CheckForUpgradeEnchufe(argument0, argument1)
{
	
	for (var i=0; i< 1; i++)
	{
		mods = ds_map_find_value(argument0, i)
	
		if (mods.bouncingBullets == false) && (global.havePickedBouncingBullets)
		{
			inEnchufe.upgradesBattery+=1;
			mods.bouncingBullets = true;
			global.havePickedBouncingBullets = false;
			_sprite = s_bouncingBulletsEnchufe;
			
		}
		if (mods.smartBullets == false) && (global.havePickedSmartBullets)
		{
			inEnchufe.upgradesBattery+=1;
			mods.smartBullets = true;
			global.havePickedSmartBullets = false;
			_sprite = s_smartBulletsEnchufe;
		
		}
		if (mods.piercingBullets == false) && (global.havePickedPiercingBullets)
		{
			inEnchufe.upgradesBattery+=1;
			mods.piercingBullets = true;
			global.havePickedPiercingBullets = false;
			_sprite = s_piercingBulletsEnchufe;
			
		}
		if (mods.bombBullets == false) && (global.havePickedExploBullets)
		{
			inEnchufe.upgradesBattery+=1;
			mods.bombBullets = true;
			global.havePickedExploBullets = false;
			_sprite = s_exploBulletsEnchufe;
			
		}
		if (mods.bifurcateBullets == false) && (global.havePickedSplitBullets)
		{
			inEnchufe.upgradesBattery+=1;
			mods.bifurcateBullets = true;
			global.havePickedSplitBullets = false;
			_sprite = s_splitBulletsEnchufe;
			
		}
		if (mods.pushingBullets == false) && (global.havePickedPushingBullets)
		{
			inEnchufe.upgradesBattery+=1;
			mods.pushingBullets = true;
			global.havePickedPushingBullets = false;
			_sprite = s_pushBulletsEnchufe;
			
		}
	}
	
	if (inEnchufe.upgradesBattery = 1)
	{
		xoffset = 0;
		yoffset = 20;
		var _c = dcos(inEnchufe._angle);
		var _s = dsin(inEnchufe._angle);
		var _x = inEnchufe.x - xoffset * _c - yoffset * _s;
		var _y = inEnchufe.y - xoffset * -_s - yoffset * _c;
		
		battery = instance_create_layer(_x,_y, "Enchufes", o_BatteryEnchufe);
		battery.sprite_index = _sprite;
		battery.xoffset = xoffset;
		battery.yoffset = yoffset;
		
	}
	
	if (inEnchufe.upgradesBattery = 2)
	{
		xoffset = 10;
		yoffset = -15;
		var _c = dcos(inEnchufe._angle);
		var _s = dsin(inEnchufe._angle);
		var _x = inEnchufe.x - xoffset * _c - yoffset * _s;
		var _y = inEnchufe.y - xoffset * -_s - yoffset * _c;
		
		battery = instance_create_layer(_x,_y, "Enchufes", o_BatteryEnchufe);
		battery.sprite_index = _sprite;
		battery.xoffset = xoffset;
		battery.yoffset = yoffset;
		battery.off_angle = -45;
	}
	
	if (inEnchufe.upgradesBattery = 3)
	{
		xoffset = -10;
		yoffset = -15;
		var _c = dcos(inEnchufe._angle);
		var _s = dsin(inEnchufe._angle);
		var _x = inEnchufe.x - xoffset * _c - yoffset * _s;
		var _y = inEnchufe.y - xoffset * -_s - yoffset * _c;
		
		battery = instance_create_layer(_x,_y, "Enchufes", o_BatteryEnchufe);
		battery.sprite_index = _sprite;
		battery.xoffset = xoffset;
		battery.yoffset = yoffset;
		battery.off_angle = 45;
		
	}
	
}