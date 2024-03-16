// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Unplug()
{
	
	thisEnchufe = enchufe;
	thisEnchufe.canBeEnchufated = false;
	thisEnchufe.canBeEnchufatedCont = 20;
	o_enchufe_Father.enchufeActive = false;
	if (thisEnchufe.isPETA_F == true)
	{
		thisEnchufe.dying = true;
		thisEnchufe.petaActive = false;
	}
	thisEnchufe.charging = false;
	thisEnchufe.occupied = false;
	gamepad_set_vibration(0,0.15,0.15);
	alarm[4] = 5;
	audio_play_sound_on(global.audioEmitter,choose(snd_unPlugged, snd_unPlugged_2, snd_unPlugged_3),false,50)
	plugged = false;
	o_cable.plugged = false;
	global.unPlugging = true;
	global.chargingAmmo = false;
	global.chargingHp = false;
	global.chargingLaser = false;
	global.chargingBombs = false;
	global.chargingEnergy = false;
	global.hp = floor(global.hp);///////round?////////////////////////
	global.bombAmmo = floor(global.bombAmmo);
	global.laserDrain = 0.005;
	pluggedFinal = false;
	
	if (global.spriteShip = splayer_mp3)
	{
		global.amplifyPowerLaser = 0;
		global.amplifyPowerAmmo = 0;
	}
	
	o_main.checkUpgradesOfEnchufe = false;
	
	//-------BULLET MODIFICATORS----------//
	global.piercingShot = false;
	global.bouncingBulletsIsOn = false;
	global.bulletsPushenemiesIsOn = false;
	global.bulletsAreBombs = false;
	global.bulletsDestroyBulletsIsOn = false; 
	global.bulletsAreSmartIsOn = false; 
	global.bulletsBifurcateIsOn = false; 
	global.bulletsDanceIsOn = false; 
	global.bulletsBurnIsOn = false; 
	global.bulletsElectroIsOn = false;
	global.bulletsGhostIsOn = false;
	global.bulletsIceIsOn = false;

	o_charger.scale = 1;
	
}