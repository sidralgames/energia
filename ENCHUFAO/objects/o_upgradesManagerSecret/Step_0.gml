/// @description Insert description here
// You can write your code in this editor
switch(global.spriteShip)
{
	case splayer: global.textBonus = "Start Full Bombs Every Level"; break;	
	
	case splayer_Blue: global.textBonus = "3x1 In Shields"; break;	
	
	case splayer_Red: global.textBonus = "Your Sidekick Ships Start Levels At Full HP"; break;	
	
	case splayer_Dark: global.textBonus =  "All Enemies Have -3 HP"; break;	
	
	case splayer_Purple: global.textBonus = "Even Faster During SlowMo"; break;
	
	case splayer_mp3: global.textBonus = "More Powerful Amplifier Power" ; break;
}

if (alarm[0] <= 0)
{
	alarm[0] = 5
}

if (alarm[1] <= 0)
{
	if instance_exists(o_playerShip) 
	{
		if instance_exists(o_enchufeUpgrades)
		{
			drawText = false;
			infoToDraw = o_enchufeUpgradeCapsule.info
		}
		else
		{
			if (drawText = false)
			{
				drawText = true;
				drawTextTime = 180;
			}
		}
	}
	
	if instance_exists(o_enchufeUpgrades)
	{
		if collision_circle(o_enchufeUpgradeCapsule.x, o_enchufeUpgradeCapsule.y, 50, o_playerShip, false, true) && (drawText = false)
		{
			drawTextPrev = true;
		}
		else
		{
			drawTextPrev = false;
		}
	}
	
	
}

if (drawTextTime >0)
{
	drawTextPrev = false;
}

if (drawTextTime > 0)
{
	drawTextTime --;
}
