// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function SetupLevelBoss2()
{

	enchufe0 = false;
	enchufeHP1 = false;
	enchufeHP2 = false;
	enchufeShield = false;
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
	
	room_width = (CELL_WIDTH/32) *800; //
	room_height = (CELL_HEIGHT/32) *(320*4);
	

	
	 _wall_map_id = layer_tilemap_get_id("Tiles");

	//set up grid
	width_ = room_width div CELL_WIDTH;
	height_ = room_height div CELL_HEIGHT;
	global.wallgrid_ = ds_grid_create(width_,height_);
	ds_grid_set_region(global.wallgrid_, 0, 0, width_-1, height_-1, VOID);

	//Create the controller in the center of the grid

	var cx = 1*width_ div 2;
	var cy = 1*height_ div 2;

	//Create the player



	CreateStrandedShip();
	
	//Create the controller
	var _controller_x = width_ div 2
	var _controller_y = height_ div 2
	var _controller_direction = irandom(3);

	var _steps = 2000;

	var _direction_change_odds = 1;

	repeat (_steps) {
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
	SetVines();
	SetTemporaryWalls();

	for ( var yy = 0; yy < height_; yy++) 
	{
	    for (var xx = 0; xx < width_; xx++) 
		{
		    if (global.wallgrid_[# xx, yy] == FLOOR) 
			{
			    var oddsE0 = 100;
				var oddsEHP = 100;
				var oddsEHP2 = 100;
				var oddsEA = 200;
				var oddsESH = 300;
				var oddsEF = 300;
				var oddsBoss = 30;
				var oddsBossPeq = 120;
			
			    var exM = xx * CELL_WIDTH+CELL_WIDTH/2;
			    var eyM = yy * CELL_HEIGHT+CELL_HEIGHT/2;
				
				if (irandom(oddsBoss) == oddsBoss) && (hasBoss = false)
				{
					nextwall = instance_nearest(exM, eyM, o_wall)
					if (point_distance(exM, eyM, nextwall.x, nextwall.y) > 120)
					{
						instance_create_layer(exM,eyM,"Banners",o_BossMecha); 
						hasBoss = true;
					}
				}
				
				if instance_exists(o_BossMecha)
				{
					
					if (point_distance(exM, eyM, o_BossMecha.x, o_BossMecha.y) > 300)
					&& (hasBossPeque = false)
					&& (point_distance(o_BossMecha.x, eyM, o_BossMecha.x, o_BossMecha.y) > 650)
					&& (point_distance(exM, o_BossMecha.y, o_BossMecha.x, o_BossMecha.y) < 250)
					{
						instance_create_layer(exM,eyM,"Enemies",o_enemyMini_BossMecha); 
						instance_create_layer(exM,eyM, "Player", o_playerShip);
					
						hasBossPeque = true;
					}
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
					
			
					if (irandom(oddsESH) == oddsESH) && (enchufeShield = false)
					{
						nextEnchufe = instance_nearest(exM, eyM, o_enchufe_Father)
					
						if (point_distance(exM, eyM, nextEnchufe.x, nextEnchufe.y) > 100)
						{
							instance_create_layer(exM,eyM,"Enchufes",o_enchufe_Laser); 
							enchufeShield = true;
						}
					}
			
					if (irandom(oddsEA) == oddsEA) && (enchufeAmmo = false)
					{
						nextEnchufe = instance_nearest(exM, eyM, o_enchufe_Father)
					
						if (point_distance(exM, eyM, nextEnchufe.x, nextEnchufe.y) > 10)
						{
							instance_create_layer(exM,eyM,"Enchufes",o_enchufe_Ammo); 
							enchufeAmmo = true;
						}
					}
				
					//if (irandom(oddsEF) == oddsEF) && (enchufeFinal = false)
					//{
					//	nextEnchufe = instance_nearest(exM, eyM, o_enchufe_Father)
					//	nextwall = instance_nearest(exM, eyM, o_wall)
					
					//	if (point_distance(exM, eyM, nextEnchufe.x, nextEnchufe.y) > 200)
					//	{
					//		if (point_distance(exM, eyM, nextwall.x, nextwall.y) > 80)
					//		{
					//			instance_create_layer(exM,eyM,"Enchufes",o_enchufe_Final); 
					//			enchufeFinal = true;
					//		}
					//	}
					//}
				}
		    } 
	    }
	}

	if (!enchufeAmmo) || (hasBoss = false)  || (hasBossPeque = false) || (!enchufeShield)
		|| (!enchufeHP1) || (!enchufeHP2)
	{
		room_restart();

	}


	PlacePetasInTiles(20);
	
}