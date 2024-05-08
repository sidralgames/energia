/// @description Insert description here
// You can write your code in this editor


if (alarm[0] <= 0)
{
	//if instance_exists(lightBomb)
	//{
	//	instance_destroy(lightBomb)
	//}

	instance_destroy();
}
dir +=33

if (room != Sala_Inicio)
{

	var _tilemap_id = layer_tilemap_get_id("Tiles");

	_x = x+lengthdir_x(10*scale, dir)
	_y = y+lengthdir_y(10*scale, dir)

	_x2 = x+lengthdir_x(30*scale, dir)
	_y2 = y+lengthdir_y(30*scale, dir)

	_x3 = x+lengthdir_x(60*scale, dir)
	_y3 = y+lengthdir_y(60*scale, dir)




	if (global.wallgrid_[# _x/32, _y/32] != FLOOR) && (_x > 50) && (_x < room_width-50)
		&& (_y > 50) && (_y < room_height-50)
	{
		global.changingTiles = true;
		
		tilemap_set_at_pixel(_tilemap_id, 0, _x, _y);
		velo = random_range(1,1.5);
		global.wallgrid_[# _x/32, _y/32] = FLOOR
		mp_grid_clear_rectangle(global.gridRoom1, _x-15,_y-15,_x,_y)
		met = instance_create_layer(x+lengthdir_x(10*scale, dir),y+lengthdir_y(10*scale, dir),"Meteors", o_meteor)
		if instance_exists(met)
		{
			met._hpush = lengthdir_x(velo,dir)
			met._vpush = lengthdir_y(velo,dir)
		}
		//ChangeNearTiles(_x/32,_y/32);
	}


	if (global.wallgrid_[# _x2/32, _y2/32] != FLOOR)&& (_x2 > 50) && (_x2 < room_width-50)
	&& (_y2 > 50) && (_y2 < room_height-50)
	{
		global.changingTiles = true;
		
		tilemap_set_at_pixel(_tilemap_id, 0, _x2, _y2);
		velo = random_range(1,1.5);
		global.wallgrid_[# _x2/32, _y2/32] = FLOOR
		mp_grid_clear_rectangle(global.gridRoom1, _x2-15,_y2-15,_x2,_y2)
		met2 = instance_create_layer(x+lengthdir_x(30*scale, dir),y+lengthdir_y(30*scale, dir), "Meteors",o_meteor)
	
		if instance_exists(met2)
		{
			met2._hpush = lengthdir_x(velo,dir)
			met2._vpush = lengthdir_y(velo,dir)
		}
		//ChangeNearTiles(_x2/32,_y2/32);
	}


	if (global.wallgrid_[# _x3/32, _y3/32] != FLOOR) && (_x3 > 50) && (_x3 < room_width-50)
	&& (_y3 > 50) && (_y3 < room_height-50)
	{
		global.changingTiles = true;

		tilemap_set_at_pixel(_tilemap_id, 0, _x3, _y3);
		velo = random_range(1,1.5);
		global.wallgrid_[# _x3/32, _y3/32] = FLOOR
		mp_grid_clear_rectangle(global.gridRoom1, _x3-15,_y3-15,_x3,_y3)
		met3 = instance_create_layer(x+lengthdir_x(60*scale, dir),y+lengthdir_y(60*scale, dir),"Meteors", o_meteor)
	
		if instance_exists(met3)
		{
			met3._hpush = lengthdir_x(velo,dir)
			met3._vpush = lengthdir_y(velo,dir)
		}
		//ChangeNearTiles(_x3/32,_y3/32);
	}

}