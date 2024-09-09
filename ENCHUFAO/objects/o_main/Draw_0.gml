/// @description Insert description here
// You can write your code in this editor
draw_set_halign(fa_left)


//draw_text(__view_get( e__VW.XView, 0 )+20,__view_get( e__VW.YView, 0 )+120, "enchufes: " + string(global.enchufesexistentes))
//draw_text(__view_get( e__VW.XView, 0 )+20,__view_get( e__VW.YView, 0 )+130, "level: " + string(global.level))






if instance_exists(o_playerShip)
{
	if (o_playerShip.showEnergy)
	{
		draw_circular_bar(o_playerShip.x+23, o_playerShip.y-23, global.energy, global.energyMax, global.lightBlue, 7,1, 2);
		draw_circular_bar(o_playerShip.x+23, o_playerShip.y-23, global.energy, global.energyMax, c_white, 6,1, 2);
	}
	
	//draw_text(o_playerShip.x, o_playerShip.y-100, string(global.ammo))
	//draw_text(o_playerShip.x, o_playerShip.y-120, string(global.chipDuration))
}

if (!isPaused) && (room != Sala_Splash)
{

	UIPlayership();

	SlowMoIndicator();
	
	draw_set_color(c_white);

	LowEnergyWarning();

	UIBossBreach();
	
	UIBossGarbanzo();
	
	UIBossWorm();

	UIUnlockShip();

	UIPlayerDamage();
}

if instance_exists(o_menuScores) || instance_exists(o_menuGameSettings)
|| instance_exists(o_menuOptions) || instance_exists(o_menuGodModeOptions)
{
	imageWorkin+=0.2;
	draw_sprite_ext(s_workin, imageWorkin,__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+180, 1,1,image_angle, image_blend, image_alpha);
}

if (global.inTutorial)
{
	
	if (showControlsTut = false)
	{
		draw_sprite_ext(s_showControls, 0,__view_get( e__VW.XView, 0 )+0,__view_get( e__VW.YView, 0 )+0, 1,1,image_angle, image_blend, image_alpha);
	}
	else
	{
		draw_sprite_ext(s_showControls, 1,__view_get( e__VW.XView, 0 )+0,__view_get( e__VW.YView, 0 )+0, 1,1,image_angle, image_blend, image_alpha);
	}
	
	if (global.level = -2)
	{
		draw_sprite_ext(s_textotutorial, 0,__view_get( e__VW.XView, 0 )+0,__view_get( e__VW.YView, 0 )+0, 1,1,image_angle, image_blend, image_alpha);
	
		if (global.energy > global.energyLow) 
		{
			draw_sprite_ext(s_controlsAll_Map,1,o_playerShip.x, o_playerShip.y+30, 0.4, 0.4, 0, image_blend, image_alpha)
		}
	}
	
	if (global.level = -1)
	{
		if (breachTutorial = false)
		{
			draw_sprite_ext(s_textotutorial, 1,__view_get( e__VW.XView, 0 )+0,__view_get( e__VW.YView, 0 )+0, 1,1,image_angle, image_blend, image_alpha);
		}
		else
		{
			if !instance_exists(o_breach)
			{
				draw_sprite_ext(s_textotutorial, 3,__view_get( e__VW.XView, 0 )+0,__view_get( e__VW.YView, 0 )+0, 1,1,image_angle, image_blend, image_alpha);
			}
			else
			{
				draw_sprite_ext(s_textotutorial, 2,__view_get( e__VW.XView, 0 )+0,__view_get( e__VW.YView, 0 )+0, 1,1,image_angle, image_blend, image_alpha);
			}
			
		}
	}
	
	if (global.level = 0)
	{
		if (instance_exists(o_playerShip) && instance_exists(o_BatteryPickUp_Father)) && (global.energy > global.energyLow)
		{
			nearBattery = instance_nearest(o_playerShip.x, o_playerShip.y, o_BatteryPickUp_Father);
			
			if (point_distance(o_playerShip.x, o_playerShip.y, nearBattery.x, nearBattery.y) < 100)
			{
			draw_sprite_ext(s_textotutorial, 4,__view_get( e__VW.XView, 0 )+0,__view_get( e__VW.YView, 0 )+0, 1,1,image_angle, image_blend, image_alpha);
			}
		}
		else
		{
			draw_sprite_ext(s_textotutorial, 3,__view_get( e__VW.XView, 0 )+0,__view_get( e__VW.YView, 0 )+0, 1,1,image_angle, image_blend, image_alpha);
		}

	}

	if (global.level = 1)
	{
		
	}
}