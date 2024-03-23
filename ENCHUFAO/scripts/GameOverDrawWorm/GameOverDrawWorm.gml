// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function GameOverDrawWorm(_name)
{
	switch(_name)
	{
		case ("Freeworm"):
		{
			drawsprite = false;
			global.FinalTrail = false;
			
			if (wallMouth = false)
			{
				wallMouth = true;
				enemy = instance_create_layer(__view_get( e__VW.XView, 0 )+390,__view_get( e__VW.YView, 0 )+245,"PauseHUE",o_enemyMouth_FreeGameOver);
			}
			
			draw_set_color(global.brightRed);
			draw_text(__view_get( e__VW.XView, 0 )+319,__view_get( e__VW.YView, 0 )+261,"Freeworm");

			draw_set_color(c_white)
			draw_text(__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+260,"Freeworm");
			draw_set_font(global.customFont12);
			if (tipChoosed = false)
			{
				tipChoosed = true;
				tip = irandom_range(0,10)
			}
			infoGameOverEnemyWorm(tip);
			draw_set_color(global.lightBlue)
			draw_text(__view_get( e__VW.XView, 0 )+319,__view_get( e__VW.YView, 0 )+286, string(text))
			draw_set_color(c_white)
			draw_text(__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+285, string(text))
		}
		break;
		
		case ("Gripper"):
		{
			drawsprite = false;
			global.FinalTrail = false;
			
			if (wallMouth = false)
			{
				wallMouth = true;
				enemy = instance_create_layer(__view_get( e__VW.XView, 0 )+350,__view_get( e__VW.YView, 0 )+245,"PauseHUE",o_enemySegmentsGameOver);
			}
			
			draw_set_color(global.brightRed);
			draw_text(__view_get( e__VW.XView, 0 )+319,__view_get( e__VW.YView, 0 )+261,"Gripper");

			draw_set_color(c_white)
			draw_text(__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+260,"Gripper");
			draw_set_font(global.customFont12);
			if (tipChoosed = false)
			{
				tipChoosed = true;
				tip = irandom_range(0,10)
			}
			infoGameOverEnemyWorm(tip);
			draw_set_color(global.lightBlue)
			draw_text(__view_get( e__VW.XView, 0 )+319,__view_get( e__VW.YView, 0 )+286, string(text))
			draw_set_color(c_white)
			draw_text(__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+285, string(text))
		}
		break;
		
		case ("Wormageddon"):
		{
			drawsprite = false;
			global.FinalTrail = false;
			
			if (wallMouth = false)
			{
				wallMouth = true;
				enemy = instance_create_layer(__view_get( e__VW.XView, 0 )+400,__view_get( e__VW.YView, 0 )+245,"PauseHUE",o_BigWormGameOver);
			}
			
			draw_set_color(global.brightRed);
			draw_text(__view_get( e__VW.XView, 0 )+319,__view_get( e__VW.YView, 0 )+261,"Wormageddon");

			draw_set_color(c_white)
			draw_text(__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+260,"Wormageddon");
			draw_set_font(global.customFont12);
			if (tipChoosed = false)
			{
				tipChoosed = true;
				tip = irandom_range(0,10)
			}
			infoGameOverEnemyWorm(tip);
			draw_set_color(global.lightBlue)
			draw_text(__view_get( e__VW.XView, 0 )+319,__view_get( e__VW.YView, 0 )+286, string(text))
			draw_set_color(c_white)
			draw_text(__view_get( e__VW.XView, 0 )+320,__view_get( e__VW.YView, 0 )+285, string(text))
		}
		break;
	}

}