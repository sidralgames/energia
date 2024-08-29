/// @description Insert description here
// You can write your code in this editor

if (cont = true)
{
	o_main.endingLevel = true;
	FreeLightSurface();
	ActivateAndDestroyBetweenLevels();
	//---- KILL CHIPS ----//
	if instance_exists(o_chipFather)
	{
		o_chipFather._hp = 1;
	}
	
	StopSounds();
	
	if (global.inTutorial == false)
	{
		global.level+=1;
		
		if (global.bestLevelRun <= global.level)
		{
			global.bestLevelRun = global.level;
		}
	
		if (global.level = 7)
		{
			room_goto(Sala_SecondBoss)
		}
		else if (global.level = 8)
		{
			room_goto(Sala_MegaUpgrade);
			//ResetEnchufesUpgrades();
		}
		else if (global.level = 15)
		{
			room_goto(Sala_BossWorm)
		}
		else if (global.level = 16)
		{
			room_goto(Sala_MegaUpgrade);
			//ResetEnchufesUpgrades();
		}
		else
		{
			//if (global.level = 3) || (global.level = 6) || (global.level = 9)
			if (global.level mod 2 == 0)
			{
				global.XPpoints += global.level*100;
				room_goto(Sala_Upgade);
			}
			else 
			{
				if instance_exists(o_upgradesManager)
				{
					instance_destroy(o_upgradesManager);
				}
			
				if instance_exists(o_megaUpgradesManager)
				{
					instance_destroy(o_megaUpgradesManager);
				}
		
				room_goto(Sala_0)
			}
		}
	}
	else
	{
		if (room = Sala_Tutorial)
		{
			if (global.level = 1)
			{
				global.inTutorial = false;
				
				SaveGame();
				gamepad_set_vibration(0,0,0);
				with(o_main)
				{
					FreeLightSurface();
					ActivateAndDestroy();
					instance_destroy();
				}
			}
			else
			{
				global.level+=1;
				room_goto(Sala_Tutorial);	
			}
		}
	}
}



