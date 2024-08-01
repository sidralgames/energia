// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function SetupLevelBossWorm()
{

	global.MegaEnemiesInLevel=0;
	global.MegaEnemiesInLevel_Max=2;
	
	global.BatteriesInLevel = 0;
	global.BatteriesInLevel_Max = 2;
	
	enchufe0 = false;
	enchufeHP1 = false;
	enchufeHP2 = false;
	enchufeLaser = false;
	enchufeAmmo = false;
	enchufeFinal = false;
	hasBoss = false;
	hasBossPeque = false

	__background_set( e__BG.X, 0, irandom(2000) );
	__background_set( e__BG.Y, 0, irandom(1000) );


	__view_set( e__VW.HView, 0, __view_get( e__VW.HPort, 0 ) );
	__view_set( e__VW.WView, 0, __view_get( e__VW.WPort, 0 ) );

	__view_set( e__VW.HView, 0, 360 );
	__view_set( e__VW.WView, 0, 640 );


	//Set de grid height and width
	
	room_width = (CELL_WIDTH/32) *(320*4); //
	room_height = (CELL_HEIGHT/32) *(320*4);
	

	
	 _wall_map_id = layer_tilemap_get_id("Tiles");

	//set up grid
	width_ = room_width div CELL_WIDTH;
	height_ = room_height div CELL_HEIGHT;
	global.wallgrid_ = ds_grid_create(width_+1,height_+1);
	ds_grid_set_region(global.wallgrid_, 0, 0, width_-1, height_-1, VOID);

	//Create the controller in the center of the grid

	var cx = 1*width_ div 2;
	var cy = 1*height_ div 2;

	//Create the player

	instance_create(x,y,o_gridRoom);
	
	instance_create_layer(cx*CELL_WIDTH+CELL_WIDTH/2, cy*CELL_HEIGHT+CELL_HEIGHT/2, "Player", o_playerShip);
	
	CreateStrandedShip();
	
	//Create the controller
	var _controller_x = width_ div 2
	var _controller_y = height_ div 2
	var _controller_direction = irandom(3);

	var _steps = 3000;

	var _direction_change_odds = 0;

	repeat (_steps) 
	{
		global.wallgrid_[# _controller_x, _controller_y] = FLOOR;
	
		//Randomize the direction
		if (irandom(_direction_change_odds) == _direction_change_odds){
			_controller_direction = irandom(3);
		}
	
		//Move the controller
		var _x_direction = lengthdir_x(1,_controller_direction*90);
		var _y_direction = lengthdir_y(1,_controller_direction*90);
		_controller_x += _x_direction;
		_controller_y += _y_direction;
	
		//Make sure we don't go outside the grid
		if (_controller_x < 2 || _controller_x >= width_ - 2) {
			_controller_x += -_x_direction * 2;
		}
		if (_controller_y < 2 || _controller_y >= height_ - 2) {
			_controller_y += -_y_direction * 2;
		}
	}

	SetTiles();
	SetVines(5);

	for ( var yy = 0; yy < height_; yy++) 
	{
	    for (var xx = 0; xx < width_; xx++) 
		{
		    if (global.wallgrid_[# xx, yy] == FLOOR) 
			{
			    var oddsE0 = 100;
				var oddsEHP = 100;
				var oddsEHP2 = 100;
				var oddsEnchufeAmmo = 200;
				var oddsEnchufeLaser = 300;
				var oddsEF = 300;
				var oddsBoss = 30;
			
			    var exM = xx * CELL_WIDTH+CELL_WIDTH/2;
			    var eyM = yy * CELL_HEIGHT+CELL_HEIGHT/2;
				
				if (irandom(oddsBoss) == oddsBoss) && (hasBoss = false) &&
				(point_distance(exM, eyM, o_playerShip.x, o_playerShip.y) > 400) &&
				(point_distance(exM, eyM, o_playerShip.x, eyM) > 200)
				{
					instance_create_layer(exM,eyM,"EnemiesHUE",o_BossWorm_Mouth); 
					hasBoss = true;
				}
			
				
				if (irandom(oddsE0) == oddsE0) && (enchufe0 = false)
				{
					instance_create_layer(exM,eyM,"Enchufes",o_enchufePETA); 
					enchufe0 = true;
				}
				if instance_exists(o_enchufe_Father)
				{
					if (irandom(oddsEHP) == oddsEHP) && (enchufeHP1 = false)
					{
						nextEnchufe = instance_nearest(exM, eyM, o_enchufe_Father)

						if (point_distance(exM, eyM, nextEnchufe.x, nextEnchufe.y) > 100)
						{
							instance_create_layer(exM,eyM,"Enchufes",o_enchufePETAHP); 
							enchufeHP1 = true;
						}
					}
					
					if (irandom(oddsEHP2) == oddsEHP2) && (enchufeHP2 = false)
					{
						nextEnchufe = instance_nearest(exM, eyM, o_enchufe_Father)

						if (point_distance(exM, eyM, nextEnchufe.x, nextEnchufe.y) > 100)
						{
							instance_create_layer(exM,eyM,"Enchufes",o_enchufePETAHP); 
							enchufeHP2 = true;
						}
					}
					
			
					//if (irandom(oddsEnchufeLaser) == oddsEnchufeLaser) && (enchufeLaser = false)
					//{
					//	nextEnchufe = instance_nearest(exM, eyM, o_enchufe_Father)
					
					//	if (point_distance(exM, eyM, nextEnchufe.x, nextEnchufe.y) > 100)
					//	{
					//		instance_create_layer(exM,eyM,"Enchufes",o_enchufe_Laser); 
					//		enchufeLaser = true;
					//	}
					//}
			
					//if (irandom(oddsEnchufeAmmo) == oddsEnchufeAmmo) && (enchufeAmmo = false)
					//{
					//	nextEnchufe = instance_nearest(exM, eyM, o_enchufe_Father)
					
					//	if (point_distance(exM, eyM, nextEnchufe.x, nextEnchufe.y) > 10)
					//	{
					//		instance_create_layer(exM,eyM,"Enchufes",o_enchufe_Ammo); 
					//		enchufeAmmo = true;
					//	}
					//}
				}
		    } 
	    }
	}

	if  (hasBoss = false) //|| (!enchufeLaser) || (!enchufeAmmo) ||
		|| (!enchufeHP1) || (!enchufeHP2)
	{
		room_restart();

	}

	PlacePetasInTiles(40);

	SetTemporaryWalls()
}