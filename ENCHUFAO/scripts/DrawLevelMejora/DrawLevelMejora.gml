// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function DrawLevelMejora()
{
	mimics = 0;
	mimicsMax = 2;
	
	mimicsCapsule = 0;
	mimicsCapsuleMax = 2;
	
	PETAs = 0;
	PETAsMax = 3;
	
	enchufe0 = false;
	enchufeHP = false;
	enchufeShield = false;
	enchufeAmmo = false;
	enchufeBomb = false;
	enchufeFinal = false;
	
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
				var oddsSuperCapsule = 400;
				
				var oddsEnchufeFinal = 300;
				
				var oddsStrandedShip = 300;
				
				
				var oddsEnchufeMimic = 2500;
				var oddsCapsuleMimic = 2500;

				var oddsPETAPickUp = 300;
				var oddsShieldPickUp = 300;
				
				//var oddsBomb = 300;
				//var oddsUpgradeEnchufe = 300;
				
				
			
			    var exM = xx * CELL_WIDTH+CELL_WIDTH/2;
			    var eyM = yy * CELL_HEIGHT+CELL_HEIGHT/2;
				
				if (irandom(oddsEnchufeEnergy) == oddsEnchufeEnergy) && (enchufe0 = false)
				{
					nextwall = instance_nearest(exM, eyM, o_wall)
					if (point_distance(exM, eyM, nextwall.x, nextwall.y) > 20)
					{
						instance_create_layer(exM,eyM,"Enchufes",o_enchufeUpgadeAmmo); 
						enchufe0 = true;
					}
				}
				
				if instance_exists(o_enchufe_Father)
				{
					if (irandom(oddsEnchufeFinal) == oddsEnchufeFinal) && (enchufeFinal = false)
					{
						nextEnchufe = instance_nearest(exM, eyM, o_enchufe_Father)
						nextwall = instance_nearest(exM, eyM, o_wall)
					
						if (point_distance(exM, eyM, nextEnchufe.x, nextEnchufe.y) > 150)
						{
							if (point_distance(exM, eyM, nextwall.x, nextwall.y) > 50)
							{
								finalE = instance_create_layer(exM,eyM,"Enchufes",o_enchufe_Final); 
								finalE.depth = layer_get_depth("Enchufes")+20;
								enchufeFinal = true;
							}
						}
					}
				}
		    } 
	    }
	}
}