// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function SetupLevelBasic(_maxFloor, _minFloor, _hCells, _vCells, _stepsTotal)
{
	totalFloor = 0;
	maxFloor = _maxFloor;
	minFloor = _minFloor;
	realSteps = 0;
	global.newChargerX = 0;
	global.newChargerY = 0;
	
	global.MegaEnemiesInLevel=0;
	global.MegaEnemiesInLevel_Max=2;
	
	global.BatteriesInLevel = 0;
	global.BatteriesInLevel_Max = 2;
	
	
	
	UpgradesEnchufesInLevelMax = 7;
	UpgradesEnchufesInLevel = 0;

	__background_set( e__BG.X, 0, irandom(2000) );
	__background_set( e__BG.Y, 0, irandom(1000) );

	//room_set_width(Sala_0, (32 * _hCells)); // = 42 celdas
	//room_set_height(Sala_0, (32 * _vCells));// = 1280 = 40 celdas
	room_width = (32 * _hCells); // = 42 celdas
	room_height = (32 * _vCells); // = 1280 = 40 celdas

	rW = room_width;
	rH = room_height;

	__view_set( e__VW.HView, 0, __view_get( e__VW.HPort, 0 ) );
	__view_set( e__VW.WView, 0, __view_get( e__VW.WPort, 0 ) );

	__view_set( e__VW.HView, 0, 360 );
	__view_set( e__VW.WView, 0, 640 );


	//Set de grid height and width

	 _wall_map_id = layer_tilemap_get_id("Tiles");

	//set up grid
	width_ = rW div CELL_WIDTH;
	height_ = rH div CELL_HEIGHT;
	
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

	var _steps = _stepsTotal;

	var _direction_change_odds = 0;
	
	
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
	DrawLevelBasic();
	
	PlaceSecretEnchufe(200);
	PlaceChargerAdapter(200);
	
	haveEnchufeFinal = (enchufeFinal = true) || (enchufeFinal_Broken_L = true && enchufeFinal_Broken_R = true)
	
	if (!enchufe0) || (!enchufeHP) || (!enchufeAmmo) || (!enchufeLaser)
	|| (!haveEnchufeFinal)
	|| (!strandedShipOK)
	|| (totalFloor < minFloor)
	|| (adapters < 1)
	|| (enchufesSecret < 1)
	{
		room_restart();
	}
	
	
	
	PlacePetasInTiles(60);
	PlaceChipsInTiles(60);

	
}