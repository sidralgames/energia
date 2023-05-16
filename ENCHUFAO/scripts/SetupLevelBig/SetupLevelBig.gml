// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function SetupLevelBig()
{
	alarm[0] = 120;
	alarm[1] = 140;

	enchufe0 = false;
	enchufeHP = false;
	enchufeShield = false;
	enchufeAmmo = false;
	enchufeFinal = false;

	__background_set( e__BG.X, 0, irandom(2000) );
	__background_set( e__BG.Y, 0, irandom(1000) );


	room_width = (CELL_WIDTH/32) *(320*7); //
	room_height = (CELL_HEIGHT/32) *(320*7);


	__view_set( e__VW.HView, 0, __view_get( e__VW.HPort, 0 ) );
	__view_set( e__VW.WView, 0, __view_get( e__VW.WPort, 0 ) );

	__view_set( e__VW.HView, 0, 360 );
	__view_set( e__VW.WView, 0, 640 );


	//Set de grid height and width

	var _wall_map_id = layer_tilemap_get_id("Tiles");

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


	for (var _y = 0; _y < height_; _y++){
		for (var _x = 0; _x < width_; _x++){
			if (global.wallgrid_[# _x, _y] != FLOOR) {
		var w_up = global.wallgrid_[# _x, _y-1] == VOID;
		var w_left = global.wallgrid_[# _x-1, _y] == VOID;
		var w_right = global.wallgrid_[# _x+1, _y] == VOID;
		var w_down = global.wallgrid_[# _x, _y+1] == VOID;
		var w_upright = global.wallgrid_[# _x+1, _y-1] == VOID;
		var w_upleft = global.wallgrid_[# _x-1, _y-1] == VOID;
		var w_downright = global.wallgrid_[# _x+1, _y+1] == VOID;
		var w_downleft = global.wallgrid_[# _x-1, _y+1] == VOID;
			

		tile=44
	if(w_up)
	{
	 tile=47
	 if(w_right)
	 {
	  tile=4
	  if(w_down)
	  {
	   tile=12
	   if(w_left)
	   {
	    tile=28
	    if(w_upright)
	    {
	     tile=29
	     if(w_downright)
	     {
	      tile=33
	      if(w_downleft)
	      {
	       tile=39
	       if(w_upleft)tile=43
	      }
	      else if(w_upleft)tile=40
	     }
	     else if(w_downleft)
	     {
	      tile=37
	      if(w_upleft)tile=41
	     }
	     else if(w_upleft)tile=36
	    }
	    else if(w_downright)
	    {
	     tile=30
	     if(w_downleft)
	     {
	      tile=34
	      if(w_upleft)tile=42
	     }
	     else if(w_upleft)tile=38
	    }
	    else if(w_downleft)
	    {
	     tile=31
	     if(w_upleft)tile=35
	    }
	    else if(w_upleft)tile=32
	   }
	   else if(w_upright)
	   {
	    tile=16
	    if(w_downright)tile=18
	   }
	   else if(w_downright)tile=17
	  }
	  else if(w_left)
	  {
	   tile=15
	   if(w_upright)
	   {
	    tile=25
	    if(w_upleft)tile=27
	   }
	   else if(w_upleft)tile=26
	  }
	  else if(w_upright)tile=8
	 }
	 else if(w_down)
	 {
	  tile=45
	  if(w_left)
	  {
	   tile=14
	   if(w_downleft)
	   {
	    tile=22
	    if(w_upleft)tile=24
	   }
	   else if(w_upleft)tile=23
	  }
	 }
	 else if(w_left)
	 {
	  tile=7
	  if(w_upleft)tile=11
	 }
	}
	else if(w_right)
	{
	 tile=1
	 if(w_down)
	 {
	  tile=5
	  if(w_left)
	  {
	   tile=13
	   if(w_downright)
	   {
	   tile=19
	    if(w_downleft)tile=21
	   }
	   else if(w_downleft)tile=20
	  }
	  else if(w_downright)tile=9
	 }
	 else if(w_left)
	 {
	  tile=46
	 }
	}
	else if(w_down)
	{
	 tile=2
	 if(w_left)
	 {
	  tile=6
	  if(w_downleft)tile=10
	 }
	}
	else if(w_left)
	{
	 tile=3
	}


			
		tilemap_set(_wall_map_id, tile, _x, _y)

			}
		}
	}



	for ( var yyW = 0; yyW < height_; yyW++)
	{
	    for (var xxW = 0; xxW < width_; xxW++)
		{
    
			var oddsW = 0
		    var exW = xxW * CELL_WIDTH+CELL_WIDTH/2;
		    var eyW = yyW * CELL_HEIGHT+CELL_HEIGHT/2;
     
		     if (irandom(oddsW) == oddsW)
			 {
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
			
			    var exM = xx * CELL_WIDTH+CELL_WIDTH/2;
			    var eyM = yy * CELL_HEIGHT+CELL_HEIGHT/2;
			
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
								instance_create_layer(exM,eyM,"Enchufes",o_enchufe_Final); 
								enchufeFinal = true;
							}
						}
					}
				}
		    } 
	    }
	}


	alarm[0]=60;



	if (!enchufe0) || (!enchufeHP) || (!enchufeAmmo) || (!enchufeShield) || (!enchufeFinal) 
	{
		room_restart();
	}

}