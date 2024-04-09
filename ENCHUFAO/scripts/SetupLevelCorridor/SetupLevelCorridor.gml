// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function SetupLevelCorridor()
{
	
	capsulesInLevel = 0;
	capsulesInLevelMax = 4;
	
	totalFloor = 0;
	maxFloor = 950;
	minFloor = 600;
	realSteps = 0;
	
	global.newChargerX = 0;
	global.newChargerY = 0;
	
	global.MegaEnemiesInLevel=0;
	global.MegaEnemiesInLevel_Max=2;
	
	global.BatteriesInLevel = 0;
	global.BatteriesInLevel_Max = 2;
	
	enchufe0 = false;
	enchufeHP = false;
	enchufeShield = false;
	enchufeAmmo = false;
	enchufeBomb = false;
	enchufeFinal = false;
	
	ShieldsInLevel = 0;
	ShieldsInLevelMax = 2;
	
	BombsInLevelMax = 3;
	BombsInLevel = 0;
	
	PetasInLevelMax = 2;
	PetasInLevel = 0;
	
	UpgradesEnchufesInLevelMax = 7;
	UpgradesEnchufesInLevel = 0;

	__background_set( e__BG.X, 0, irandom(2000) );
	__background_set( e__BG.Y, 0, irandom(1000) );


	room_width = (CELL_WIDTH/32) *1344; // = 42 celdas
	room_height = (CELL_HEIGHT/32) *(320*4); // = 1280 = 40 celdas



	__view_set( e__VW.HView, 0, __view_get( e__VW.HPort, 0 ) );
	__view_set( e__VW.WView, 0, __view_get( e__VW.WPort, 0 ) );

	__view_set( e__VW.HView, 0, 360 );
	__view_set( e__VW.WView, 0, 640 );


	//Set de grid height and width

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
	instance_create_layer(cx*CELL_WIDTH+CELL_WIDTH/2, cy*CELL_HEIGHT+CELL_HEIGHT/2, "Player", o_playerShip);
	
	
	if (global.level = 1) && (global.spriteShip = splayer_Red) && (creadaStrandedRed = false)
	{
		creadaStrandedRed = true;
		global.strandedShipGreen = true;
		//global.strandedShipRed = true;
		//global.strandedShipBlue = true;
		//global.strandedShipPurple = true;
		//global.strandedShipDark = true;
		//global.strandedShipMP3 = true;
	}
	
	//--Fake Worm Boss--//
	//if (global.level = 5)
	//{
	//	instance_create_layer(choose(-100, room_width+100),room_height+50, "Back", o_FakeBoss_Worm);
	//}


	//Create the controller
	var _controller_x = width_ div 2
	var _controller_y = height_ div 2
	var _controller_direction = irandom(3);

	var _steps = 4000;

	var _direction_change_odds = 2;

	repeat (_steps)
	{
			realSteps +=1;
		
		if (global.wallgrid_[# _controller_x, _controller_y] != FLOOR)
		{
			totalFloor +=1;;	
		}
		
		if (totalFloor > maxFloor)
		{
			break;
		}
		
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
	
	SetTemporaryWalls();
	
	//Draw the level
	DrawLevelCorridor();
	
	if (!enchufe0) || (!enchufeHP) || (!enchufeAmmo)
	|| (!enchufeShield) || (!enchufeFinal) || (!strandedShipOK) || (totalFloor < minFloor)
	//|| (UpgradesEnchufesInLevel < 1)

	{
		room_restart();
	}
	
	
	
	PlacePetasInTiles(60);

	
}