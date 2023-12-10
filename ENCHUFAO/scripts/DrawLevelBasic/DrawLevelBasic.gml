// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function DrawLevelBasic()
{
	mimics = 0;
	mimicsMax = 2;
	
	PETAs = 0;
	PETAsMax = 3;
	
	for ( var yy = 0; yy < height_; yy++) 
	{
	    for (var xx = 0; xx < width_; xx++) 
		{
		    if (global.wallgrid_[# xx, yy] == FLOOR) 
			{
			    var oddsEnchufeEnergy = 300;
				var oddsEnchufeHP = 300;
				var oddsEnchufeAmmo = 300;
				var oddsEnchufeLaser = 300;
				
				var oddsEnchufeBomb = 300;
				var oddsEnchufePETA = 1000;
				
				var oddsEnchufeFinal = 300;
				
				var oddsStrandedShip = 300;
				var oddsEnchufeMimic = 2500;

				var oddsPETAPickUp = 300;
				var oddsShieldPickUp = 300;
				
				//var oddsBomb = 300;
				//var oddsUpgradeEnchufe = 300;
				
				
			
			    var exM = xx * CELL_WIDTH+CELL_WIDTH/2;
			    var eyM = yy * CELL_HEIGHT+CELL_HEIGHT/2;
				
				
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
				//if (irandom(oddsUpgradeEnchufe) == oddsUpgradeEnchufe) && (UpgradesEnchufesInLevel < UpgradesEnchufesInLevelMax) //&& global.level > 2
				//{
				//	upgrade = choose(o_smartBulletsPickUp, o_BouncingBulletsPickUp, o_piercingBulletsPickUp,
				//	o_ExploBulletsPickUp, o_PushingBulletsPickUp, o_SplitBulletsPickUp, o_BurningBulletsPickUp)
				//	instance_create_layer(exM+random_range(-3,3),eyM+random_range(-3,3),"Enchufes",upgrade); 
				//	UpgradesEnchufesInLevel +=1;
				//}
				
				
				//----- CREATE BOMBS ------//
				//if (irandom(oddsBomb) == oddsBomb) && (BombsInLevel < BombsInLevelMax) 
				//{
				//	instance_create_layer(exM+random_range(-3,3),eyM+random_range(-3,3),"Enchufes",o_BombpickUp); 
				//	BombsInLevel +=1;
				//}
				
				if (irandom(oddsShieldPickUp) == oddsShieldPickUp) && (ShieldsInLevel < ShieldsInLevelMax) 
				{
					instance_create_layer(exM+random_range(-3,3),eyM+random_range(-3,3),"Enchufes",o_ShieldpickUp); 
					ShieldsInLevel +=1;
				}
				
				if (irandom(oddsEnchufeEnergy) == oddsEnchufeEnergy) && (enchufe0 = false)
				{
					instance_create_layer(exM,eyM,"Enchufes",o_enchufe); 
					enchufe0 = true;
				}
				
				if instance_exists(o_enchufe_Father)
				{
					if (irandom(oddsEnchufeHP) == oddsEnchufeHP) && (enchufeHP = false)
					{
						nextEnchufe = instance_nearest(exM, eyM, o_enchufe_Father)

						if (point_distance(exM, eyM, nextEnchufe.x, nextEnchufe.y) > 250)
						{
							instance_create_layer(exM,eyM,"Enchufes",o_enchufe_Hp); 
							enchufeHP = true;
						}
					}
			
					if (irandom(oddsEnchufeLaser) == oddsEnchufeLaser) && (enchufeShield = false)
					{
						nextEnchufe = instance_nearest(exM, eyM, o_enchufe_Father)
					
						if (point_distance(exM, eyM, nextEnchufe.x, nextEnchufe.y) > 250)
						{
							instance_create_layer(exM,eyM,"Enchufes",o_enchufe_Laser); 
							enchufeShield = true;
						}
					}
			
					if (irandom(oddsEnchufeAmmo) == oddsEnchufeAmmo) && (enchufeAmmo = false)
					{
						nextEnchufe = instance_nearest(exM, eyM, o_enchufe_Father)
					
						if (point_distance(exM, eyM, nextEnchufe.x, nextEnchufe.y) > 250)
						{
							instance_create_layer(exM,eyM,"Enchufes",o_enchufe_Ammo); 
							enchufeAmmo = true;
						}
					}
					
					if (irandom(oddsEnchufeBomb) == oddsEnchufeBomb) && (enchufeBomb = false)
					{
						nextEnchufe = instance_nearest(exM, eyM, o_enchufe_Father)
					
						if (point_distance(exM, eyM, nextEnchufe.x, nextEnchufe.y) > 250)
						{
							instance_create_layer(exM,eyM,"Enchufes",o_enchufeBombs); 
							enchufeBomb = true;
						}
					}
					if (global.level > 1)
					{
						if (irandom(oddsEnchufeMimic) == oddsEnchufeMimic) 
						{
							nextEnchufe = instance_nearest(exM, eyM, o_enchufe_Father)
					
							if (point_distance(exM, eyM, nextEnchufe.x, nextEnchufe.y) > 50) && (mimics < mimicsMax)
							{
								instance_create_layer(exM,eyM,"Enchufes",o_enchufe_Mimic); 
								mimics +=1;
							}
						}
					}
				
					if (irandom(oddsEnchufeFinal) == oddsEnchufeFinal) && (enchufeFinal = false)
					{
						nextEnchufe = instance_nearest(exM, eyM, o_enchufe_Father)
						nextwall = instance_nearest(exM, eyM, o_wall)
					
						if (point_distance(exM, eyM, nextEnchufe.x, nextEnchufe.y) > 200)
						{
							if (point_distance(exM, eyM, nextwall.x, nextwall.y) > 80)
							{
								finalE = instance_create_layer(exM,eyM,"Enchufes",o_enchufe_Final); 
								finalE.depth = layer_get_depth("Enchufes")+20;
								enchufeFinal = true;
							}
						}
					}
					
					if (irandom(oddsEnchufePETA) == oddsEnchufePETA) && (PETAs <= PETAsMax)
					{
						peta = choose(o_enchufePETA, o_enchufePETAAmmo, o_enchufePETAHP, o_enchufePETALaser)
						instance_create_layer(exM,eyM,"Enchufes",peta); 
						PETAs += 1;
					}
				}
		    } 
	    }
	}
}