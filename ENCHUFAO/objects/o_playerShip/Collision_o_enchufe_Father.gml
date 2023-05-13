/// @description Insert description here
// You can write your code in this editor
if (other.abierto = true)
{
	if (key_x)
	{
		if (plugged = false)
		{
			audio_play_sound(choose(snd_plugged, snd_plugged_2, snd_plugged_3),50,false)
			plugged = true;
			enchufe = instance_nearest(x,y,o_enchufe_Father)
			global.plugging = true;
			global.xToPlug = enchufe.x;
			global.yToPlug = enchufe.y;
		
			if (other.reset = true)
			{
				global.resetingShip = true;	
			}
				if (other.go = true)
			{
				global.Go = true;	
			}
			
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
			else if (other.energy = true)
			{
				global.chargingEnergy = true;
			}
			else if (other.final = true)
			{
				pluggedFinal = true;
			}
			
			if (room = Sala_Upgade)
			{
				if (other.upgradeAmmo = true) && (upgraded = false)
				{
					other.charging = true;
					upgraded = true;
					global.ammoMax += 50;
					global.ammo = global.ammoMax;
				}
				else if (other.upgradeEnergy = true) && (upgraded = false)
				{
					other.charging = true;
					upgraded = true;
					global.energyTotal += 50;
					global.energy = global.energyTotal;
				}
				else if (other.upgradeHP = true) && (upgraded = false)
				{
					other.charging = true;
					upgraded = true;
					global.hp += 1;
					global.hp = global.hpMax;
				}
			}
		}
	}
}



