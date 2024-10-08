// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function DrawLevelBasic()
{
	if (global.level > 1)
	{
		finalEnchufeType = choose("Standard" ,"Broken");
	}
	else
	{
		finalEnchufeType = "Standard";
	}
	
	mimics = 0;
	mimicsMax = 2;
	
	mimicsCapsule = 0;
	mimicsCapsuleMax = 2;
	
	PETAs = 0;
	PETAsMax = 3;
	
	enchufe0 = false;
	enchufeHP = false;
	enchufeLaser = false;
	enchufeAmmo = false;
	enchufeBomb = false;
	enchufeFinal = false;
	
	enchufeFinal_Broken_R = false;
	enchufeFinal_Broken_L = false;
	
	ShieldsInLevel = 0;
	ShieldsInLevelMax = 2;
	
	BombsInLevelMax = 3;
	BombsInLevel = 0;
	
	PetasInLevelMax = 2;
	PetasInLevel = 0;
	
	capsulesInLevel = 0;
	capsulesInLevelMax = 4;
	
	superCapsulesInLevel = 0;
	superCapsulesInLevelMax = 1;
	
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
				var oddsCapsule = 200;
				var oddsSuperCapsule = 500;
				
				 oddsEnchufeFinal = 300;
				
				var oddsStrandedShip = 300;
				
				
				var oddsEnchufeMimic = 2500;
				var oddsCapsuleMimic = 2500;

				var oddsPETAPickUp = 300;
				var oddsShieldPickUp = 300;
				
				//var oddsBomb = 300;
				//var oddsUpgradeEnchufe = 300;
				
				
			
			    exM = xx * CELL_WIDTH+CELL_WIDTH/2;
			    eyM = yy * CELL_HEIGHT+CELL_HEIGHT/2;
				
				
				if (irandom(oddsStrandedShip) == oddsStrandedShip) && (StrandedShipsInLevel < StrandedShipsInLevelMax) 
				{
					var ship = instance_create_layer(exM+random_range(-3,3),eyM+random_range(-3,3),"Shield",o_strandedShip); 
					ship.createdStranded = true;
					StrandedShipsInLevel +=1;
					strandedShipOK = true;
				}
				
				if (irandom(oddsPETAPickUp) == oddsPETAPickUp) && (PetasInLevel < PetasInLevelMax)//&& global.level > 2
				{
					nextPetaPU= instance_nearest(exM, eyM, o_PETApickUp)
					
					if instance_exists(o_PETApickUp)
					{
						if (point_distance(exM,eyM, nextPetaPU.x, nextPetaPU.y) > 500)
						{
							instance_create_layer(exM+random_range(-3,3),eyM+random_range(-3,3),"Enchufes",o_PETApickUp); 
							PetasInLevel +=1;
						}
					}
					else
					{
						instance_create_layer(exM+random_range(-3,3),eyM+random_range(-3,3),"Enchufes",o_PETApickUp); 
						PetasInLevel +=1;
					}
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
					nextShieldPU = instance_nearest(exM, eyM, o_ShieldpickUp)
					
					if instance_exists(o_ShieldpickUp)
					{
						if (point_distance(exM,eyM, nextShieldPU.x, nextShieldPU.y) > 500)
						{
							instance_create_layer(exM+random_range(-3,3),eyM+random_range(-3,3),"Enchufes",o_ShieldpickUp); 
							ShieldsInLevel +=1;
						}
					}
					else
					{
						instance_create_layer(exM+random_range(-3,3),eyM+random_range(-3,3),"Enchufes",o_ShieldpickUp); 
						ShieldsInLevel +=1;
					}
				}
				
				if (irandom(oddsEnchufeEnergy) == oddsEnchufeEnergy) && (enchufe0 = false)
				{
					nextwall = instance_nearest(exM, eyM, o_wall)
					if (point_distance(exM, eyM, nextwall.x, nextwall.y) > 20)
					{
						instance_create_layer(exM,eyM,"Enchufes",o_enchufe); 
						enchufe0 = true;
					}
				}
				
				if instance_exists(o_enchufe_Father)
				{
					if (irandom(oddsEnchufeHP) == oddsEnchufeHP) && (enchufeHP = false)
					{
						nextEnchufe = instance_nearest(exM, eyM, o_enchufe_Father)
						nextwall = instance_nearest(exM, eyM, o_wall)
						if (point_distance(exM, eyM, nextwall.x, nextwall.y) > 20)
						{
							if (point_distance(exM, eyM, nextEnchufe.x, nextEnchufe.y) > 250)
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
							if (point_distance(exM, eyM, nextEnchufe.x, nextEnchufe.y) > 250)
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
							if (point_distance(exM, eyM, nextEnchufe.x, nextEnchufe.y) > 250)
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
					
					PlaceEnchufeFinal("Standard");
					
					if (global.level > 1)
					{
						if (irandom(oddsEnchufeMimic) == oddsEnchufeMimic) 
						{
							nextEnchufe = instance_nearest(exM, eyM, o_enchufe_Father)
							nextwall = instance_nearest(exM, eyM, o_wall)
							if (point_distance(exM, eyM, nextwall.x, nextwall.y) > 30)
							{
								if (point_distance(exM, eyM, nextEnchufe.x, nextEnchufe.y) > 50) && (mimics < mimicsMax)
								{
									instance_create_layer(exM,eyM,"Enchufes",o_enchufe_Mimic); 
									mimics +=1;
								}
							}
						}
					}
					
					if (global.level > 1)
					{
						if (irandom(oddsCapsuleMimic) == oddsCapsuleMimic) 
						{
							nextEnchufe = instance_nearest(exM, eyM, o_enchufe_Father)
							nextwall = instance_nearest(exM, eyM, o_wall)
							if (point_distance(exM, eyM, nextwall.x, nextwall.y) > 30)
							{
								if (point_distance(exM, eyM, nextEnchufe.x, nextEnchufe.y) > 50) && (mimicsCapsule < mimicsCapsuleMax)
								{
									instance_create_layer(exM,eyM,"Enchufes",o_capsule_Mimic); 
									mimicsCapsule +=1;
								}
							}
						}
					}
				
				
					
					if (irandom(oddsEnchufePETA) == oddsEnchufePETA) && (PETAs < PETAsMax)
					{
						if (global.allPETAisMulti)
						{
							peta = choose(o_enchufePETAAll)
						}
						else
						{
							peta = choose(o_enchufePETA, o_enchufePETAAmmo, o_enchufePETAHP, o_enchufePETALaser)
						}
						
						instance_create_layer(exM,eyM,"Enchufes",peta); 
						PETAs += 1;
					}
					
					if (irandom(oddsCapsule) == oddsCapsule) && (capsulesInLevel < capsulesInLevelMax) //&& global.level > 2
					{
						nextCapsule= instance_nearest(exM, eyM, o_capsule)
						nextEnchufe = instance_nearest(exM, eyM, o_enchufe_Father)
						nextwall = instance_nearest(exM, eyM, o_wall)
						if (point_distance(exM, eyM, nextwall.x, nextwall.y) > 60)
						{
							if (point_distance(exM, eyM, nextEnchufe.x, nextEnchufe.y) > 80)
							{
								if instance_exists(o_capsule)
								{
									if (point_distance(exM,eyM, nextCapsule.x, nextCapsule.y) > 500)
									{
										instance_create_layer(exM+random_range(-3,3),eyM+random_range(-3,3),"Enchufes",o_capsule); 
										capsulesInLevel +=1;
									}
								}
								else
								{
									instance_create_layer(exM+random_range(-3,3),eyM+random_range(-3,3),"Enchufes",o_capsule); 
									capsulesInLevel +=1;
								}
							}
						}
					}
					
					if (irandom(oddsSuperCapsule) == oddsSuperCapsule) && (superCapsulesInLevel < superCapsulesInLevelMax) //&& global.level > 2
					{
						nextCapsule= instance_nearest(exM, eyM, o_superCapsule)
						nextEnchufe = instance_nearest(exM, eyM, o_enchufe_Father)
						nextwall = instance_nearest(exM, eyM, o_wall)
						
						if (point_distance(exM, eyM, nextwall.x, nextwall.y) > 90)
						{
							if (point_distance(exM, eyM, nextEnchufe.x, nextEnchufe.y) > 80)
							{
								if instance_exists(o_superCapsule)
								{
									if (point_distance(exM,eyM, nextCapsule.x, nextCapsule.y) > 500)
									{
										instance_create_layer(exM+random_range(-3,3),eyM+random_range(-3,3),"Enchufes",o_superCapsule); 
										superCapsulesInLevelMax +=1;
									}
								}
								else
								{
									instance_create_layer(exM+random_range(-3,3),eyM+random_range(-3,3),"Enchufes",o_superCapsule); 
									superCapsulesInLevelMax +=1;
								}
							}
						}
					}
				}
		    } 
	    }
	}
}