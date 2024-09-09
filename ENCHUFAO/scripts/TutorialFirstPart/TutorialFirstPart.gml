// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function TutorialFirstPart()
{

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
	
	
		if (irandom(oddsEnchufeFinal) == oddsEnchufeFinal) && (enchufeFinal = false)
		{
			nextEnchufe = instance_nearest(exM, eyM, o_enchufe_Father)
			nextwall = instance_nearest(exM, eyM, o_wall)
			if instance_exists(nextEnchufe) 
			{
				if (point_distance(exM, eyM, nextEnchufe.x, nextEnchufe.y) > 100)
				{
					if (point_distance(exM, eyM, nextwall.x, nextwall.y) > 80)
					{
						
							finalE = instance_create_layer(exM,eyM,"Enchufes",o_enchufe_Final); 
							finalE.depth = layer_get_depth("Enchufes")+20;
							enchufeFinal = true;
					}
				}
			}
		}
	

}