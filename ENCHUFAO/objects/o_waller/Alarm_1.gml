/// @description Insert description here
// You can write your code in this editor

if instance_exists(o_playerShip)
{
	var cx = 1*(irandom(25)+1)//width div 2;
	var cy = 1*(irandom(15)+1);//height div 2;

	if (grid_[# cx, cy] == FLOOR) 
	{
		if (point_distance(cx, cy, o_playerShip.x, o_playerShip.y) > 50)
		{
			instance_create_layer(cx*CELL_WIDTH+CELL_WIDTH/2, cy*CELL_HEIGHT+CELL_HEIGHT/2, "Player", o_enemy)
		}
	}
}

alarm[1] = random_range(140,200) - (10*global.level);

