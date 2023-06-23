/// @description BREACH

if timesBreach >0 
{
	if instance_exists(o_playerShip)
	{
		 breachcx = 1*(irandom(width_)+1)//;
		 breachcy = 1*(irandom(height_)+1);//height div 2;
		
		 breachX = breachcx * CELL_WIDTH+CELL_WIDTH/2;
		 breachY = breachcy * CELL_HEIGHT+CELL_HEIGHT/2;
		
		if (point_distance(breachX, breachY, o_playerShip.x, o_playerShip.y) < 200)
		{
			if (global.wallgrid_[# breachcx, breachcy] == FLOOR) &&
			//(global.wallgrid_[# breachcx+1, breachcy] == FLOOR) &&
			//(global.wallgrid_[# breachcx-1, breachcy] == FLOOR) &&
			(global.wallgrid_[# breachcx, breachcy-1] == FLOOR) &&
			(global.wallgrid_[# breachcx, breachcy+1] == FLOOR) 
			{
				spawningBreach = true;
				breachObj = instance_create_layer(breachX, breachY, "Breach", o_breach)
				//breachObj = instance_create_layer(breachX, breachY, "Breach", o_blackHole)
				alarm[4] = breachDuration; 
				breachRetryTime = 600;
				timesBreach-=1;
			}
		}
	}
}





