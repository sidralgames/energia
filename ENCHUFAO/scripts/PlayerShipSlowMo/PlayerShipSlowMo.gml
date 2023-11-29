// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function PlayerShipSlowMo()
{
	if (global.slowMoTime <= 1) && (canSlowMotion)
	{
		canSlowMotion = false;
		alarm[7] = 120;
	}

	if global.slowMoTime <105 && !key_BulletTime
	{
		canSlowMotion = false;
	}
	if (alarm[7] <= 0) && (!key_BulletTime) && (global.slowMoTime > 105)
	{
		canSlowMotion = true;
	}

	if (key_BulletTime) && (canSlowMotion = true)
	{
	
		SetTimeSlow();
	
		o_main.alarm[1] = 90;
	
		if (global.slowMoTime >=0)
		{
			global.slowMoTime -=1.1;
		}

		global.relativeSpeed = lerp(global.relativeSpeed,0.3, 0.05);
		pitch = min(1,global.relativeSpeed+0.5);
		audio_emitter_pitch(global.audioEmitter, pitch);
		
		layer_set_visible("EffectColorBulletTime", true);
		
		fx_colorBT = lerp(fx_colorBT,0.6,0.01); 
		colorBT_fx_params.g_Intensity = fx_colorBT;	
		fx_set_parameters(colorBT_fx, colorBT_fx_params);
	
	}
	else 
	{
		//if (global.slowMoTime <= global.slowMoTimeMax)
		//{
		//	global.slowMoTime +=0.4;
		//}
	
		fx_colorBT = lerp(fx_colorBT,0,0.03); 
		colorBT_fx_params.g_Intensity = fx_colorBT;
		fx_set_parameters(colorBT_fx, colorBT_fx_params);

		if (fx_colorBT <=0.1)
		{
			layer_set_visible("EffectColorBulletTime", false);
		}
		
		if (global.relativeSpeed > 0.8)
		{
			pitch = 1;
			audio_emitter_pitch(global.audioEmitter, pitch);
			global.relativeSpeed = 1.0;	
		}
		else
		{
			global.relativeSpeed = lerp(global.relativeSpeed,1.0, 0.05);
			pitch = lerp(pitch,1.0, 0.05);
		}
	}
}