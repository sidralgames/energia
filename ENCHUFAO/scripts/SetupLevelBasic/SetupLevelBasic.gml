// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function SetupLevelBasic()
{
	global.newChargerX = 0;
	global.newChargerY = 0;
	
	enchufe0 = false;
	enchufeHP = false;
	enchufeShield = false;
	enchufeAmmo = false;
	enchufeFinal = false;

	__background_set( e__BG.X, 0, irandom(2000) );
	__background_set( e__BG.Y, 0, irandom(1000) );


	room_width = (CELL_WIDTH/32) *(320*4); //
	room_height = (CELL_HEIGHT/32) *(320*4);


	__view_set( e__VW.HView, 0, __view_get( e__VW.HPort, 0 ) );
	__view_set( e__VW.WView, 0, __view_get( e__VW.WPort, 0 ) );

	__view_set( e__VW.HView, 0, 360 );
	__view_set( e__VW.WView, 0, 640 );


	//Set de grid height and width

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


	instance_create_layer(cx*CELL_WIDTH+CELL_WIDTH/2, cy*CELL_HEIGHT+CELL_HEIGHT/2, "Player", o_playerShip);
	CreateStrandedShip();


	//Create the controller
	var _controller_x = width_ div 2
	var _controller_y = height_ div 2
	var _controller_direction = irandom(3);




	var _steps = 3500;

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



	for ( var yyW = 0; yyW < height_; yyW++) {
	    for (var xxW = 0; xxW < width_; xxW++) {
    
	var oddsW = 0
	     var exW = xxW * CELL_WIDTH+CELL_WIDTH/2;
	     var eyW = yyW * CELL_HEIGHT+CELL_HEIGHT/2;
     
	     if (irandom(oddsW) == oddsW){
	    if (global.wallgrid_[# xxW, yyW] == WALL) 
				 {
					instance_create_layer(exW,eyW, "Walls", o_wall);
			     }
			     if (global.wallgrid_[# xxW, yyW] == VOID) 
				 {
					instance_create_layer(exW,eyW, "Walls", o_wall);
			     }
 
	     }
     
	     }
	     }


	//Draw the level using grid
	for ( var yy = 0; yy < height_; yy++) 
	{
	    for (var xx = 0; xx < width_; xx++) 
		{
		    if (global.wallgrid_[# xx, yy] == FLOOR) 
			{
			    var oddsE0 = 300;
				var oddsEHP = 300;
				var oddsEA = 300;
				var oddsESH = 300;
				var oddsEF = 300;
				var oddsStrandedShip = 300;
				
				var oddsPETA = 300;
				var oddsBomb = 300;
			
			    var exM = xx * CELL_WIDTH+CELL_WIDTH/2;
			    var eyM = yy * CELL_HEIGHT+CELL_HEIGHT/2;
			
				if (irandom(oddsStrandedShip) == oddsStrandedShip) && (StrandedShipsInLevel < StrandedShipsInLevelMax) 
				{
					var ship = instance_create_layer(exM+random_range(-3,3),eyM+random_range(-3,3),"Player",o_strandedShip); 
					ship.createdStranded = true;
					StrandedShipsInLevel +=1;
					strandedShipOK = true;
				}
				
				if (irandom(oddsPETA) == oddsPETA) && (PetasInLevel < PetasInLevelMax) //&& global.level > 2
				{
					instance_create_layer(exM+random_range(-3,3),eyM+random_range(-3,3),"Enchufes",o_PETApickUp); 
					PetasInLevel +=1;
				}
				
				if (irandom(oddsBomb) == oddsBomb) && (BombsInLevel < BombsInLevelMax) 
				{
					instance_create_layer(exM+random_range(-3,3),eyM+random_range(-3,3),"Enchufes",o_BombpickUp); 
					BombsInLevel +=1;
				}
				
				if (irandom(oddsE0) == oddsE0) && (enchufe0 = false)
				{
					instance_create_layer(exM,eyM,"Enchufes",o_enchufe); 
					enchufe0 = true;
				}
				if instance_exists(o_enchufe_Father)
				{
					if (irandom(oddsEHP) == oddsEHP) && (enchufeHP = false)
					{
						nextEnchufe = instance_nearest(exM, eyM, o_enchufe_Father)

						if (point_distance(exM, eyM, nextEnchufe.x, nextEnchufe.y) > 250)
						{
							instance_create_layer(exM,eyM,"Enchufes",o_enchufe_Hp); 
							enchufeHP = true;
						}
					}
			
					if (irandom(oddsESH) == oddsESH) && (enchufeShield = false)
					{
						nextEnchufe = instance_nearest(exM, eyM, o_enchufe_Father)
					
						if (point_distance(exM, eyM, nextEnchufe.x, nextEnchufe.y) > 250)
						{
							instance_create_layer(exM,eyM,"Enchufes",o_enchufe_Shield); 
							enchufeShield = true;
						}
					}
			
					if (irandom(oddsEA) == oddsEA) && (enchufeAmmo = false)
					{
						nextEnchufe = instance_nearest(exM, eyM, o_enchufe_Father)
					
						if (point_distance(exM, eyM, nextEnchufe.x, nextEnchufe.y) > 250)
						{
							instance_create_layer(exM,eyM,"Enchufes",o_enchufe_Ammo); 
							enchufeAmmo = true;
						}
					}
				
					if (irandom(oddsEF) == oddsEF) && (enchufeFinal = false)
					{
						nextEnchufe = instance_nearest(exM, eyM, o_enchufe_Father)
						nextwall = instance_nearest(exM, eyM, o_wall)
					
						if (point_distance(exM, eyM, nextEnchufe.x, nextEnchufe.y) > 200)
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
	    }
	}

	SetVines();


	if (!enchufe0) || (!enchufeHP) || (!enchufeAmmo) || 
	(!enchufeShield) || (!enchufeFinal) || (!strandedShipOK)
	{
		room_restart();
	}
	
	

}