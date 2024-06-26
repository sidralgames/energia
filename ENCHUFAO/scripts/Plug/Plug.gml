// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Plug()
{
	pluggedInEnchufeBroken = false;
	
	global.totalPlugs+=1;
	gamepad_set_vibration(0,0.2,0.2);
	alarm[4] = 10;
	
	audio_play_sound_on(global.audioEmitter,choose(snd_plugged, snd_plugged_2, snd_plugged_3),false, 50);
	enchufe = inEnchufe;
	
	if (enchufe.enchufeTrapper == false)
	{
		enchufe.enchufeActive = true;
		enchufe.occupied = true;
	}
	
	global.plugging = true;
	
	if (haveBatteryUpgrade) && (enchufe.isPETA_F == false) && (enchufe.isCapsuleUpgrade == false) 
	&& (enchufe.enchufeBomb == false) && (enchufe.upgradesBattery < 3)
	&& (enchufe.IsEnchufeBoss == false) && (enchufe.IsEnchufeCapsule == false) 
	{
		if (enchufe.hp)
		{
			CheckForUpgradeEnchufe(global.enchufeHPUpgradesList, global.enchufeHPUpgradesNum)
		}
		else if (enchufe.ammo)
		{
			CheckForUpgradeEnchufe(global.enchufeAmmoUpgradesList, global.enchufeAmmoUpgradesNum)
		}
		else if (enchufe.laser)
		{
			CheckForUpgradeEnchufe(global.enchufeLaserUpgradesList, global.enchufeLaserUpgradesNum)
		}
		else if (enchufe.energy)
		{
			CheckForUpgradeEnchufe(global.enchufeEnergyUpgradesList, global.enchufeEnergyUpgradesNum)
		}
		
	}
	
	if (enchufe.isPETA)
	{
		if (enchufe.fromFriend)
		{
			o_charger.scale = 0.65;
		}
		else
		{
			o_charger.scale = 0.75;
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
			
			//--DESTROY ANY BATTERYS ATTACHED---//
			haveBatteryUpgrade = false;
			global.havePickedBouncingBullets = false;
			global.havePickedSmartBullets = false;
			global.havePickedPiercingBullets = false;
			global.havePickedExploBullets = false;
			global.havePickedSplitBullets = false;
			global.havePickedPushingBullets = false;
			global.havePickedBurningBullets = false;
			global.havePickedElectroBullets = false;
			global.havePickedGhostBullets = false;
			global.havePickedIceBullets = false;
			
		}
		else
		{	
			if (enchufe.IsEnchufeMP3CHILL)
			{
				o_charger.scale = 1.5;
				global.xToPlug = enchufe.xConnectionPos;
				global.yToPlug = enchufe.yConnectionPos;
			}
			if (enchufe.IsEnchufeBoss)
			{
				o_charger.scale = 1.4;
				global.xToPlug = enchufe.x+lengthdir_x(30,enchufe.image_angle)
				global.yToPlug = enchufe.y+lengthdir_y(30,enchufe.image_angle)
			}
			else if (enchufe.IsEnchufeCapsule)
			{
				if (enchufe.IsEnchufeCapsuleSuper)
				{
					o_charger.scale = 1.5;
					global.xToPlug = enchufe.x+lengthdir_y(25,enchufe.image_angle)
					global.yToPlug = enchufe.y+lengthdir_y(25,enchufe.image_angle)
				}
				else
				{
					o_charger.scale = 0.8;
					global.xToPlug = enchufe.x+lengthdir_y(15,enchufe.image_angle)
					global.yToPlug = enchufe.y+lengthdir_y(15,enchufe.image_angle)
				}
			}
			else
			{
				o_charger.scale = enchufe.scale;
				global.xToPlug = enchufe.xConnectionPos;
				global.yToPlug = enchufe.yConnectionPos;
			}
		}
	}
	
	plugged = true;
	
}