// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function DrawLevelTutorial()
{
	mimics = 0;
	mimicsMax = 2;
	
	controls = false;
	
	PETAs = 0;
	PETAsMax = 1;
	
	ShieldsInLevel = 0;
	ShieldsInLevelMax = 1;
	
	for ( var yy = 0; yy < height_; yy++) 
	{
	    for (var xx = 0; xx < width_; xx++) 
		{
		    if (global.wallgrid_[# xx, yy] == FLOOR) 
			{
			     oddsEnchufeEnergy = 300;
				 oddsEnchufeHP = 300;
				 oddsEnchufeAmmo = 300;
				 oddsEnchufeLaser = 300;
				 oddsEnchufeFireRate = 100;
				 oddsEnchufeCluster = 100;
				 oddsPeta = 20;
				 oddsControls = 1;
				
				 oddsEnchufeBomb = 200;
				 oddsEnchufePETA = 1000;
				
				 oddsEnchufeFinal = 300;
				
				 oddsStrandedShip = 300;
				 oddsEnchufeMimic = 2500;

				 oddsPETAPickUp = 300;
				 oddsShieldPickUp = 300;
				
				 oddsBomb = 300;
				 oddsPila = 1;
				
				
			
			     exM = xx * CELL_WIDTH+CELL_WIDTH/2;
			     eyM = yy * CELL_HEIGHT+CELL_HEIGHT/2;
				
				
		
					if (global.level = -2)
					{
						TutorialZeroPart();
					}
					else if (global.level = -1)
					{
						TutorialFirstPart();
						TutorialSecondPart();
					}
					else if (global.level = 0)
					{
						TutorialFirstPart();
						TutorialThirdPart();
						
					}
		    } 
	    }
	}
}