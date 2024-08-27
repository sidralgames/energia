// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function TutorialThirdPart()
{
	if instance_exists(o_enchufe_Father)
	{
		if (irandom(oddsEnchufeFireRate) == oddsEnchufeFireRate) && (enchufeFireRate = false)
		{
			nextEnchufe = instance_nearest(exM, eyM, o_enchufe_Father)
			nextwall = instance_nearest(exM, eyM, o_wall)
			if (point_distance(exM, eyM, nextwall.x, nextwall.y) > 100)
			{
				if (point_distance(exM, eyM, nextEnchufe.x, nextEnchufe.y) > 80)
				{
					upg = choose(o_enchufeUpgadeMoreChipDrops, o_enchufeUpgadeChargerShoots, o_enchufeUpgadeHomingBomb)
					instance_create_layer(exM,eyM,"Enchufes",upg); 
					enchufeFireRate = true;
				}
			}
		}

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
			if (point_distance(exM, eyM, nextwall.x, nextwall.y) > 60)
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
				
	//----- CREATE BATTERYS ------//
	if (irandom(oddsPila) == oddsPila) && (pilasInLevel < pilasInLevelMax) //&& global.level > 2
	{
		nearPila = instance_nearest(exM,eyM,o_BatteryPickUp_Father)
		_upgrade = choose(
		o_smartBulletsPickUp, o_smartBulletsPickUp,o_smartBulletsPickUp,
		o_BouncingBulletsPickUp, o_BouncingBulletsPickUp,o_BouncingBulletsPickUp,
		o_piercingBulletsPickUp, o_piercingBulletsPickUp, o_piercingBulletsPickUp,
		o_PushingBulletsPickUp, o_PushingBulletsPickUp, o_PushingBulletsPickUp,
		o_SplitBulletsPickUp, o_SplitBulletsPickUp, o_SplitBulletsPickUp,
		o_BurningBulletsPickUp, o_BurningBulletsPickUp, o_BurningBulletsPickUp,
		o_ElectroBulletsPickUp, o_ElectroBulletsPickUp, o_ElectroBulletsPickUp,
		o_GhostBulletsPickUp, o_GhostBulletsPickUp, o_GhostBulletsPickUp,
		o_iceBulletsPickUp, o_iceBulletsPickUp, o_iceBulletsPickUp,
		o_ExploBulletsPickUp)
		if (pilasInLevel <1)
		{
			nextwall = instance_nearest(exM, eyM, o_wall);		
			if (point_distance(exM, eyM, nextwall.x, nextwall.y) > 100)
			{
				instance_create_layer(exM+random_range(-3,3),eyM+random_range(-3,3),"Meteors",o_bulletExplic);
				pilasInLevel +=1;
			}
		}
		else
		{
			nearPila = instance_nearest(exM, eyM, o_BatteryPickUp_Father);
			if (point_distance(exM, eyM, o_bulletExplic.x, o_bulletExplic.y) < 150)
			&& (point_distance(exM, eyM, o_bulletExplic.x, o_bulletExplic.y) > 50)
			{
				if (point_distance(exM, eyM, nearPila.x, nearPila.y) > 40)
				{
					instance_create_layer(exM+random_range(-3,3),eyM+random_range(-3,3),"Enchufes",_upgrade);
					_upgrade.speed = random_range(0.15, -0.15);
					_upgrade.direction = irandom(359);
					_upgrade._angle = irandom(359);
					pilasInLevel +=1;
				}
			}
		}
		
	}
}