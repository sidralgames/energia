// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function TutorialSecondPart()
{
	if instance_exists(o_enchufe_Father)
	{
		//if (irandom(oddsEnchufeFireRate) == oddsEnchufeFireRate) && (enchufeFireRate = false)
		//{
		//	nextEnchufe = instance_nearest(exM, eyM, o_enchufe_Father)
		//	nextwall = instance_nearest(exM, eyM, o_wall)
		//	controles = instance_nearest(exM, eyM, o_controlsMap)
		//	if (point_distance(exM, eyM, nextwall.x, nextwall.y) > 100)
		//	{
		//		if (point_distance(exM, eyM, nextEnchufe.x, nextEnchufe.y) > 80)
		//		{
		//			if instance_exists(controles)
		//			{
		//				if (point_distance(exM, eyM, controles.x, controles.y) > 200)
		//				{
		//					upg = choose(o_enchufeUpgadeFireRate, o_enchufeUpgadeHP, o_enchufeUpgadeLaser)
		//					instance_create_layer(exM,eyM,"Enchufes",upg); 
		//					enchufeFireRate = true;
		//				}
		//			}
		//		}
		//	}
		//}

		if (irandom(oddsEnchufeHP) == oddsEnchufeHP) && (enchufeHP = false)
		{
			nextEnchufe = instance_nearest(exM, eyM, o_enchufe_Father)
			nextwall = instance_nearest(exM, eyM, o_wall)
			if (point_distance(exM, eyM, nextwall.x, nextwall.y) > 20)
			{
				if (point_distance(exM, eyM, nextEnchufe.x, nextEnchufe.y) > 120)
				{
					instance_create_layer(exM,eyM,"Enchufes",o_enchufe_Hp); 
					enchufeHP = true;
				}
			}
		}
			
		if (irandom(oddsEnchufeLaser) == oddsEnchufeLaser) && (enchufeLaser = false)
		{
			nextEnchufe = instance_nearest(exM, eyM, o_enchufe_Father)
			nextwall = instance_nearest(exM, eyM, o_wall)
			if (point_distance(exM, eyM, nextwall.x, nextwall.y) > 20)
			{
				if (point_distance(exM, eyM, nextEnchufe.x, nextEnchufe.y) > 120)
				{
					instance_create_layer(exM,eyM,"Enchufes",o_enchufe_Laser); 
					enchufeLaser = true;
				}
			}
		}
			
		if (irandom(oddsEnchufeAmmo) == oddsEnchufeAmmo) && (enchufeAmmo = false)
		{
			nextEnchufe = instance_nearest(exM, eyM, o_enchufe_Father)
			nextwall = instance_nearest(exM, eyM, o_wall)
			if (point_distance(exM, eyM, nextwall.x, nextwall.y) > 20)
			{
				if (point_distance(exM, eyM, nextEnchufe.x, nextEnchufe.y) > 120)
				{
					instance_create_layer(exM,eyM,"Enchufes",o_enchufe_Ammo); 
					enchufeAmmo = true;
				}
			}
		}
					
		if (irandom(oddsEnchufeBomb) == oddsEnchufeBomb) && (enchufeBomb = false)
		{
			nextEnchufe = instance_nearest(exM, eyM, o_enchufe_Father)
			nextwall = instance_nearest(exM, eyM, o_wall)
						
			if (point_distance(exM, eyM, nextwall.x, nextwall.y) > 20)
			{
				if (point_distance(exM, eyM, nextEnchufe.x, nextEnchufe.y) > 100)
				{
					instance_create_layer(exM,eyM,"Enchufes",o_enchufeBombs); 
					enchufeBomb = true;
				}
			}
		}
	}

	
	
	if (irandom(oddsStrandedShip) == oddsStrandedShip) && (StrandedShipsInLevel < StrandedShipsInLevelMax) 
	{
		var ship = instance_create_layer(exM+random_range(-3,3),eyM+random_range(-3,3),"Shield",o_strandedShip); 
		ship.createdStranded = true;
		StrandedShipsInLevel +=1;
		strandedShipOK = true;
	}
				
	if (irandom(oddsPETAPickUp) == oddsPETAPickUp) && (PetasInLevel < PetasInLevelMax) //&& global.level > 2
	{
		instance_create_layer(exM+random_range(-3,3),eyM+random_range(-3,3),"Enchufes",o_PETApickUp); 
		PetasInLevel +=1;
	}
}