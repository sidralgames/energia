// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function DrawLevelMejora()
{
	manager = false;
	enchufeAmmo= false;
	eFinal = false;
	placeholders = 0;
	
	for ( var yy = 0; yy < height_; yy++) 
	{
	    for (var xx = 0; xx < width_; xx++) 
		{
		    if (global.wallgrid_[# xx, yy] == FLOOR) 
			{
			    var oddsManager = 90;
				var oddsFinal = 90;
				
				var oddsPlaceholder = 100;
				
				var oddsEnchufeAmmo= 100;
				
			    var exM = xx * CELL_WIDTH+CELL_WIDTH/2;
			    var eyM = yy * CELL_HEIGHT+CELL_HEIGHT/2;
				
				if (irandom(oddsEnchufeAmmo) == oddsEnchufeAmmo) && (enchufeAmmo = false)
				{
					nextwall = instance_nearest(exM, eyM, o_wall)
					if (point_distance(exM, eyM, nextwall.x, nextwall.y) > 20)
					{
						instance_create_layer(exM,eyM,"Enchufes",choose(o_enchufe_Ammo, o_enchufe_Laser)); 
						enchufeAmmo = true;
					}
				}
				
				
				if (irandom(oddsManager) == oddsManager) && (manager = false)
				{
					instance_create_layer(exM,eyM,"Enchufes",o_upgradesManagerSecret); 
					manager = true;
				}
				
				if instance_exists(o_upgradesManagerSecret)
				{
					if (placeholders = 0)
					{
						nextEnchufe = instance_nearest(exM, eyM, o_upgradesManagerSecret)
						nextwall = instance_nearest(exM, eyM, o_wall)
					
						if (point_distance(exM, eyM, nextEnchufe.x, nextEnchufe.y) > 20)
						{
							if (point_distance(exM, eyM, nextwall.x, nextwall.y) > 50)
							{
								placeHolder = instance_create_layer(exM,eyM,"Enchufes",o_enchufePLACEHOLDER); 
								placeholders += 1;
							}
						}
					}
					//else
					//{
					//	if (irandom(oddsPlaceholder) == oddsPlaceholder) && (placeholders < 5)
					//	{
					//		nextEnchufe = instance_nearest(exM, eyM, o_enchufePLACEHOLDER)
					//		nextwall = instance_nearest(exM, eyM, o_wall)
					
					//		if (point_distance(exM, eyM, nextEnchufe.x, nextEnchufe.y) > 70)
					//		{
					//			if (point_distance(exM, eyM, nextwall.x, nextwall.y) > 50)
					//			{
					//				placeHolder = instance_create_layer(exM,eyM,"Enchufes",o_enchufePLACEHOLDER); 
					//				placeholders += 1;
					//			}
					//		}
					//	}
					//}
				}
				
				if (irandom(oddsFinal) == oddsFinal) && (eFinal = false) && (placeholders > 0)
				{
					nextEnchufe = instance_nearest(exM, eyM, o_enchufePLACEHOLDER)
					nextwall = instance_nearest(exM, eyM, o_wall)
					
					if (point_distance(exM, eyM, nextEnchufe.x, nextEnchufe.y) > 400)
					{
						if (point_distance(exM, eyM, nextwall.x, nextwall.y) > 70)
						{
							instance_create_layer(exM,eyM,"Enchufes",o_enchufe_Final); 
							eFinal = true;
						}
					}
				}
		    } 
	    }
	}
}