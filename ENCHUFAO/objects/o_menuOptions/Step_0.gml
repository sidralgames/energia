/// @description Insert description here
// You can write your code in this editor
Controls_Input();

if (alarm[0] <= 0)
{
	
	if (_visible)
	{
		if (key_downP)
		{
			selected +=1;	
		}

		if (key_upP)
		{
			selected -=1;	
		}

		if (selected > 4)
		{
			selected = 0;	
		}

		if (selected < 0)
		{
			selected = 4;	
		}

		if (key_x)
		{
			switch(selected)
			{
				case 0:
				{
					PlayerStats_MP3();
					shipSelected = true;
					instance_create_layer(512,269, "Enchufes", o_enchufeInicio)
					instance_create_layer(112,272, "Enchufes" ,o_enchufeResetSelector)
					instance_create_layer(30,40, "Enchufes" ,o_enchufeDeleteData)
		
					player = instance_create_layer(x,y+100,"Player", o_playerShip)
					global.ammoStatInitial = global.ammoStat;
					global.energyStatInitial = global.energyStat;
					global.HPStatInitial = global.hpStat;
					global.speedStatInitial = global.speedStat;
					global.cableStatInitial = global.cableStat;
					global.laserStatInitial = global.laserStat;
					_visible = false;
					instance_destroy();
				}break;
				case 1:
				{
					global.screenshakeIsOn = !global.screenshakeIsOn;
		
				}break;
				case 2:
				{
					_visible = false;
					instance_create(x,y,o_creditsMenu);
					instance_destroy();
		
				}break;
				case 3:
				{
					instance_create(x,y,o_menuGodModeOptions)
					instance_destroy();
					//global.godModeIsOn = !global.godModeIsOn;
		
				}break;
					case 4:
				{
					_visible = false;
					instance_destroy();
					instance_create(x,y,o_menuHome);
		
				}break;
			}
		}
	
	}

}
