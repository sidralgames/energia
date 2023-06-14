/// @description Insert description here
// You can write your code in this editor
// spawners
_wall_map_id = layer_tilemap_get_id("Tiles");

if timesTotal > 0
{
if times >0 
{

if instance_exists(o_playerShip)
{
	var cx = 1*(irandom(38)+1)//width div 2;
	var cy = 1*(irandom(38)+1);//height div 2;
	
	
	 if (point_distance(cx, cy, o_playerShip.x, o_playerShip.y) > 500)
	{
	if (global.wallgrid_[# cx, cy] == FLOOR) &&
		(global.wallgrid_[# cx+1, cy] == FLOOR) &&
		(global.wallgrid_[# cx-1, cy] == FLOOR) &&
		(global.wallgrid_[# cx, cy-1] == FLOOR) &&
		(global.wallgrid_[# cx, cy+1] == FLOOR) 
	{

	for (var i=0; i<=random_range(2,5); i++)
	{
		enemies = instance_create_layer(cx*CELL_WIDTH+CELL_WIDTH/2+random_range(-38,38), cy*CELL_HEIGHT+CELL_HEIGHT/2+random_range(-38,38), "Enemies", o_enemy)
		enemies.waiting = true;
		enemies.speed = 0;
		enemies.image_angle = irandom(360)
		enemies.direction = enemies.image_angle;
	}
			
			times-=1;
	}
			}
}

}

timesTotal-=1;
alarm[2] = 2;
}

