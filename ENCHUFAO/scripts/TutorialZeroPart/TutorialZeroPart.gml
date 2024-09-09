// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function TutorialZeroPart()
{
	if (irandom(oddsEnchufeFinal) == oddsEnchufeFinal) && (enchufeFinal = false)
	{
		nextwall = instance_nearest(exM, eyM, o_wall)
		if instance_exists(o_playerShip)
		{
			if (point_distance(exM, eyM, nextwall.x, nextwall.y) > 80)
			{
				if (point_distance(exM, eyM, o_playerShip.x, o_playerShip.y) > 50)
				{
					finalE = instance_create_layer(exM,eyM,"Enchufes",o_enchufe_Final); 
					finalE.depth = layer_get_depth("Enchufes")+20;
					enchufeFinal = true;
					finalE.abierto = false;
				}
			}
		}
	}
	
	if (irandom(oddsPeta) == oddsPeta) && (petasLevel <= petasMAx)
	{
		nearEnchufe = instance_nearest(exM, eyM, o_enchufe_Father)
		if instance_exists(nearEnchufe)
		{
			if (point_distance(exM, eyM, nearEnchufe.x, nearEnchufe.y) > 120) && (petasLevel < petasMAx)
			{
				instance_create_layer(exM,eyM,"Enchufes",o_enchufePETA); 
				petasLevel += 1;
			}
		}
	}
}