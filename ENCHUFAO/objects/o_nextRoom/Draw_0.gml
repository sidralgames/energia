/// @description Insert description here
// You can write your code in this editor
Controls_Input();
if (key_back)
{
	if (goToChillRoom = true)
	{
		canSelectShip = false;
		instance_create(x,y,o_menuOptions);
		Stats._visible = false;
		goToChillRoom = false;
	}
}
//if (!instance_exists(o_menuAchievements))
//{
if (_visible = true)
{
	draw_self();
	
	initialX = lerp(initialX, 320, 0.2);
	
	//}
	draw_set_halign(fa_center)
	//if gamepad_is_connected(0)
	//{
	//	draw_text(__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+150,"X para enchufarte/desenchufarte")
	//	draw_text(__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+180,"Enchufate para empezar")
	//}
	//else
	//{
	//	draw_text(__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+150,"Boton Raton Derecho para enchufarte/desenchufarte")
	//	draw_text(__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+180,"Enchufate para empezar")
	//}
	

	if instance_exists(o_shipSelector)
	{
		ship = ds_map_find_value(global.shipList,o_shipSelector.selected);
	}

	if (ship.unlocked == 1)
	{
		spriteToShow = ship.sprite;
	}
	else
	{
		spriteToShow = ship.spriteLocked;
	}

	if (shipSelected = false) && (canSelectShip)
	{
		if (scaleArrowsL >0)
		{
			scaleArrowsL -=0.1;
		}
		if (scaleArrowsR >0)
		{
			scaleArrowsR -=0.1;
		}
		if (alphaSprite < 1)
		{
			alphaSprite+=0.2;
		}
		draw_sprite_ext(spriteToShow,0,__view_get( e__VW.XView, 0 )+initialX,__view_get( e__VW.YView, 0 )+155,2,2,90,image_blend, alphaSprite)

		draw_set_font(customFont);
	
		if (ship.unlocked == 1)
		{
			draw_set_color(global.lightBlue)
			draw_text(__view_get( e__VW.XView, 0 )+319,__view_get( e__VW.YView, 0 )+320, string("SHIP BONUS: " + ship.stat))
			draw_text(__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+319, string("SHIP BONUS: "+ ship.stat))
	
			draw_set_color(c_white)
			draw_text(__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+319, string("SHIP BONUS: " + ship.stat))
		}
		else
		{
			draw_set_color(global.lightBlue)
			draw_text(__view_get( e__VW.XView, 0 )+319,__view_get( e__VW.YView, 0 )+320, "BONUS: ???? ??? ?????")
			draw_text(__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+319, "BONUS: ???? ??? ?????")
	
			draw_set_color(c_white)
			draw_text(__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+319, "BONUS: ???? ??? ?????")
		}

		draw_sprite_ext(s_arrows,0,__view_get( e__VW.XView, 0 )+250,__view_get( e__VW.YView, 0 )+155,1+scaleArrowsL,1+scaleArrowsL,0,image_blend, image_alpha)
		draw_sprite_ext(s_arrows,1,__view_get( e__VW.XView, 0 )+390,__view_get( e__VW.YView, 0 )+155,1+scaleArrowsR,1+scaleArrowsR,0,image_blend, image_alpha)
	}

	if (canSelectShip) && (alarm[0] < 60)
	{
		
		if (key_x) && (shipSelected = false) && (ship.unlocked == 1)
		{
			if (!goToChillRoom)
			{
				audio_play_sound_on(global.audioEmitter,snd_playMenu,false, 50);
				shipSelected = true;
				instance_create_layer(512,269, "Enchufes", o_enchufeInicio)
				instance_create_layer(520,50, "Enchufes", o_enchufeInicioGarbanzo)
				instance_create_layer(580,50, "Enchufes", o_enchufeInicioWorm)
				instance_create_layer(112,272, "Enchufes" ,o_enchufeResetSelector)
				instance_create_layer(50,40, "Enchufes" ,o_enchufeDeleteData)
				Stats._visible = false;
				player = instance_create_layer(x,y+100,"Player", o_playerShip)
				global.ammoStatInitial = global.ammoStat;
				global.energyStatInitial = global.energyStat;
				global.HPStatInitial = global.hpStat;
				global.speedStatInitial = global.speedStat;
				global.cableStatInitial = global.cableStat;
				global.laserStatInitial = global.laserStat;
			}
			else
			{
				room_goto(Sala_ChillRoom);
				
				global.infiniteAmmoIsOn = true;
				global.infiniteLaserIsOn = true;
				global.infiniteEnergyIsOn = true;
				global.infiniteHPIsOn = true;
				
				global.level = 1;
				
				global.ammoStatInitial = global.ammoStat;
				global.energyStatInitial = global.energyStat;
				global.HPStatInitial = global.hpStat;
				global.speedStatInitial = global.speedStat;
				global.cableStatInitial = global.cableStat;
				global.laserStatInitial = global.laserStat;
			}
		}
	}
}