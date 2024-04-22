// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlaceEnchufeFinal(_final)
{
	switch(_final)
	{
		case "Standard":
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
		break;
		
		case "Broken":
		{
			if (irandom(oddsEnchufeFinal) == oddsEnchufeFinal) && (enchufeFinal_Broken_L = false)
			{
				nextEnchufe = instance_nearest(exM, eyM, o_enchufe_Father)
				nextwall = instance_nearest(exM, eyM, o_wall)
					
				if (point_distance(exM, eyM, nextEnchufe.x, nextEnchufe.y) > 150)
				{
					if (point_distance(exM, eyM, nextwall.x, nextwall.y) > 50)
					{
						finalE = instance_create_layer(exM,eyM,"Enchufes",o_enchufeFinal_Broken_L); 
						finalE.depth = layer_get_depth("Enchufes")+20;
						enchufeFinal_Broken_L = true;
					}
				}
			}
					
			if (irandom(oddsEnchufeFinal) == oddsEnchufeFinal) && (enchufeFinal_Broken_R = false)
			{
				nextEnchufe = instance_nearest(exM, eyM, o_enchufe_Father)
				nextwall = instance_nearest(exM, eyM, o_wall)
			
				if (point_distance(exM, eyM, nextEnchufe.x, nextEnchufe.y) > 150)
				{
					if (point_distance(exM, eyM, nextwall.x, nextwall.y) > 50)
					{
						finalE = instance_create_layer(exM,eyM,"Enchufes",o_enchufeFinal_Broken_R); 
						finalE.depth = layer_get_depth("Enchufes")+20;
						enchufeFinal_Broken_R = true;
					}
				}
			}
		}
		break;
	}		
}