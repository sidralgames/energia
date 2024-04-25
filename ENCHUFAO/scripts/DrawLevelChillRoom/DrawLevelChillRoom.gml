// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function DrawLevelChillRoom()
{
	haveMp3 = false;
	enchufeAmmo= false;
	eFinal = false;
	
	for ( var yy = 0; yy < height_; yy++) 
	{
	    for (var xx = 0; xx < width_; xx++) 
		{
		    if (global.wallgrid_[# xx, yy] == FLOOR) 
			{
			    var oddsMP3 = 100;
				
				var oddsFinal = 90;
			
				var oddsEnchufeAmmo= 100;
				
			    var exM = xx * CELL_WIDTH+CELL_WIDTH/2;
			    var eyM = yy * CELL_HEIGHT+CELL_HEIGHT/2;
				
				if (irandom(oddsEnchufeAmmo) == oddsEnchufeAmmo) && (enchufeAmmo = false)
				{
					nextwall = instance_nearest(exM, eyM, o_wall)
					if (point_distance(exM, eyM, nextwall.x, nextwall.y) > 30)
					{
						instance_create_layer(exM,eyM,"Enchufes",choose(o_enchufe_Ammo, o_enchufe, o_enchufe_Hp, o_enchufe_Laser)); 
						enchufeAmmo = true;
					}
				}
				
				if (irandom(oddsMP3) == oddsMP3) && (haveMp3 = false)
				{
					nextwall = instance_nearest(exM, eyM, o_wall)
					if (point_distance(exM, eyM, nextwall.x, nextwall.y) > 100)
					{
						mp3 = instance_create_layer(exM,eyM,"Meteors",o_mp3ChillRoom); 
						mp3._hpush = random_range(0.2,-0.2);
						mp3._vpush = random_range(0.2,-0.2);
						haveMp3 = true;
					}
				}
				
				if instance_exists(o_enchufe_Father)
				{
					if (irandom(oddsFinal) == oddsFinal) && (eFinal = false)
					{
						nextEnchufe = instance_nearest(exM, eyM, o_enchufe_Father)
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
}