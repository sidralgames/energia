// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Plug()
{
	global.totalPlugs+=1;
	gamepad_set_vibration(0,0.2,0.2);
	alarm[4] = 10;
	
	audio_play_sound_on(global.audioEmitter,choose(snd_plugged, snd_plugged_2, snd_plugged_3),false, 50);
	
	plugged = true;
	enchufe = inEnchufe;
	global.plugging = true;
	enchufe.enchufeActive = true;
	
	if (enchufe.hp)
	{
		CheckForUpgradeEnchufe(global.enchufeHPUpgradesList, global.enchufeHPUpgradesNum)
	}
	else if (enchufe.ammo)
	{
		CheckForUpgradeEnchufe(global.enchufeAmmoUpgradesList, global.enchufeAmmoUpgradesNum)
	}
	else if (enchufe.shield)
	{
		CheckForUpgradeEnchufe(global.enchufeLaserUpgradesList, global.enchufeLaserUpgradesNum)
	}
	else if (enchufe.energy)
	{
		CheckForUpgradeEnchufe(global.enchufeEnergyUpgradesList, global.enchufeEnergyUpgradesNum)
	}
	
	
	if (enchufe.isPETA)
	{
		if (enchufe.fromFriend)
		{
			o_charger.scale = 0.75;
		}
		else
		{
			o_charger.scale = 0.85;
		}
		
		global.xToPlug = enchufe.x;
		global.yToPlug = enchufe.y;
	}
	else
	{
		if (enchufe.final)
		{
			o_charger.scale = 1.5;
			global.xToPlug = enchufe.x;
			global.yToPlug = enchufe.y-15;
		}
		else
		{
			o_charger.scale = enchufe.scale;
			global.xToPlug = enchufe.x;
			global.yToPlug = enchufe.y;
		}
	}
	
}