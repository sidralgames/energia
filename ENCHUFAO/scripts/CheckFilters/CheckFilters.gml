// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function CheckFilters()
{
	if (room = Sala_0) || (room = Sala_FirstBoss)
	{
		//---------BREACH----------//
	
		if (instance_exists(o_breach)  || instance_exists(o_breachBoss))
		//&& (layer_get_visible("EffectBreach") = false)//&& (!inBlackHoleArea)
		{

			layer_set_visible("EffectBreach", true);
		
			fx = lerp(fx,2,0.005); 
		
			distort_fx_params.g_ChromaSpreadAmount = fx*1.5
			distort_fx_params.g_Distort1Amount = fx-0.5;
			distort_fx_params.g_Distort2Amount = fx-0.5;

			fx_set_parameters(distort_fx, distort_fx_params);
		
		}
	
	
		if instance_exists(o_blackHole)
		{
			nearestHole = instance_nearest(x,y,o_blackHole);
		
			inBlackHoleArea =  point_distance(x,y,nearestHole.x, nearestHole.y) < 300
		}
	
		if instance_exists(o_blackHole) 
		{
			if (inBlackHoleArea)// && (layer_get_visible("EffectBreach") = false)
			{
						
				distanceToBlackHole = point_distance(x,y,o_blackHole.x, o_blackHole.y)
				fxDistance = (300 - distanceToBlackHole)/1.3;
				fx_blackHole = lerp(fx_blackHole,fxDistance,0.05);
	
			
				layer_set_visible("EffectBreach", true);
			
				fx_blackHole = fxDistance*0.01;
			
				distort_fx_params.g_ChromaSpreadAmount = fx_blackHole*1.75
				distort_fx_params.g_Distort1Amount = fx_blackHole;
				distort_fx_params.g_Distort2Amount = fx_blackHole;	
			
				fx_set_parameters(distort_fx, distort_fx_params);
			
			}
			else
			{
				inBlackHoleArea = false;
			}
		}
	
		if (inBlackHoleArea)
		{
			dir = point_direction(x,y,nearestHole.x, nearestHole.y)
			if !tile_meeting(x+lengthdir_x(5,dir) ,y+lengthdir_y(5,dir),"Tiles")
			{
				if point_distance(x,y,nearestHole.x, nearestHole.y) < 280 &&
				point_distance(x,y,nearestHole.x, nearestHole.y) > 5
				 {
					_hpush += lengthdir_x(0.07,dir)
					_vpush += lengthdir_y(0.07,dir)
				 }
			}
		}
	
		if (!inBlackHoleArea) && !instance_exists(o_breach)
		{
			//layer_set_visible("LOCO_1", false);
			fx = lerp(fx,0,0.03);

			distort_fx_params.g_ChromaSpreadAmount = fx*1.5
			distort_fx_params.g_Distort1Amount = fx;
			distort_fx_params.g_Distort2Amount = fx;
		
			fx_set_parameters(distort_fx, distort_fx_params);

			if (fx <=0.1)
			{
				layer_set_visible("EffectBreach", false);
			}

		}
	
	}
}