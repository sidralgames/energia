/// @description Insert description here
// You can write your code in this editor
var enemyx = 1*(irandom(38)+1)//width div 2;
	var enemyy = 1*(irandom(38)+1);//height div 2;

	if (global.wallgrid_[# enemyx, enemyy] == FLOOR) 
	{
		if (point_distance(enemyx, enemyy, o_playerShip.x, o_playerShip.y) > 100)
		{
			instance_create_layer(enemyx*CELL_WIDTH+CELL_WIDTH/2, enemyy*CELL_HEIGHT+CELL_HEIGHT/2, "Player", o_enemySpawner)
		}
	}
	
	var enemyFx = 1*(irandom(38)+1)//width div 2;
	var enemyFy = 1*(irandom(38)+1);//height div 2;

	if (global.wallgrid_[# enemyFx, enemyFy] == FLOOR) 
	{
		if (point_distance(enemyFx, enemyFy, o_playerShip.x, o_playerShip.y) > 100)
		{
			instance_create_layer(enemyFx*CELL_WIDTH+CELL_WIDTH/2, enemyFy*CELL_HEIGHT+CELL_HEIGHT/2, "Player", o_enemySpawnerFast)
		}
	}
	
	var enemyMx = 1*(irandom(38)+1)//width div 2;
	var enemyMy = 1*(irandom(38)+1);//height div 2;

	if (global.wallgrid_[# enemyMx, enemyMy] == FLOOR) 
	{
		if (point_distance(enemyMx, enemyMy, o_playerShip.x, o_playerShip.y) > 100)
		{
			instance_create_layer(enemyMx*CELL_WIDTH+CELL_WIDTH/2, enemyMy*CELL_HEIGHT+CELL_HEIGHT/2, "Player", o_enemySpawnerMisil)
		}
	}




