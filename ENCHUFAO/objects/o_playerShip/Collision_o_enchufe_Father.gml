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
		
			if (other.hp = true)
			{
				global.pluggedInHp = true;
				global.chargingHp = true;	
			}
			else if (other.shield = true)
			{
				global.pluggedInShield = true;
				global.chargingShield= true;	
			}
			else if (other.ammo = true)
			{
				global.pluggedInAmmo = true;
				global.chargingAmmo = true;	
			}
			else if (other.energy = true)
			{
				global.pluggedInEnergy = true;
			}
			else if (other.final = true)
			{
				pluggedFinal = true;
			}
		}
	}
}



