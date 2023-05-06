/// @description Insert description here
// You can write your code in this editor
alarm[0] = 120;
alarm[1] = 140;
enchufe0 = false;
enchufeHP = false;
enchufeShield = false;
enchufeAmmo = false;

__background_set( e__BG.X, 0, irandom(2000) );
__background_set( e__BG.Y, 0, irandom(1000) );


room_width = (CELL_WIDTH/32) *(320*3); //
room_height = (CELL_HEIGHT/32) *(320*2);


__view_set( e__VW.HView, 0, __view_get( e__VW.HPort, 0 ) );
__view_set( e__VW.WView, 0, __view_get( e__VW.WPort, 0 ) );

__view_set( e__VW.HView, 0, 360 );
__view_set( e__VW.WView, 0, 640 );


//Set de grid height and width

var width = room_width div CELL_WIDTH;
var height = room_height div CELL_HEIGHT;

//Create the grid

grid = ds_grid_create(width, height);

// create `path grip


//Fill the grid with void

ds_grid_set_region(grid, -32, -32, width+1, height+1, VOID);

//rrrr

randomize();

//Create the controller in the center of the grid

var cx = 1*(irandom(20)+1)//width div 2;
var cy = 1*(irandom(10)+1);//height div 2;

 
instance_create_layer(cx*CELL_WIDTH+CELL_WIDTH/2, cy*CELL_HEIGHT+CELL_HEIGHT/2, "Player", o_playerShip);

  
//instance_create(cx*CELL_WIDTH+CELL_WIDTH/2, (cy*CELL_HEIGHT+CELL_HEIGHT/2)+32, o_wall);
//ds_grid_set(grid, cx*CELL_WIDTH+CELL_WIDTH/2, (cy*CELL_HEIGHT+CELL_HEIGHT/2)+32, WALL)

// Give controller random direction

var cdir = irandom(3);


//The odds variable for changing direction 

var odds = 1;

//Create level using 1000 steps

repeat(3000) {

    //place a floor tile at the controller position
    
    grid[# cx, cy] = FLOOR;
    //Lo mismo que ds_grid_set(grid, cx, cy, FLOOR)
    
    //Randomize direction of the controller 
    
    if (irandom(odds) == odds) {
        cdir = irandom(3);
    }
  
    
    //Move controler
    
    var xdir = lengthdir_x(1, cdir*90);
    var ydir = lengthdir_y(1, cdir*90);  
    cx += xdir;
    cy += ydir;
    
  


    
    //Make sure we dont move out the grid 
    
    cx = clamp(cx, 1, width-2);
    cy = clamp(cy, 1, height-2);
    
   
}


//Add the walls
for ( var yy = 1; yy < height-1; yy++) {
    for (var xx = 1; xx < width-1; xx++) {
        if (grid[# xx, yy] == FLOOR) {
        //Check for walls
            if (grid[# xx+1, yy] != FLOOR) 
            {
            grid[# xx+1, yy] = WALL; 
            
            }
            
            if (grid[# xx-1, yy] != FLOOR)
            { 
            grid[# xx-1, yy] = WALL; 
            
            }
            if (grid[# xx, yy+1] != FLOOR)
            {
             grid[# xx, yy+1] = WALL; 
             
             }
            if (grid[# xx, yy-1] != FLOOR)
            { 
            grid[# xx, yy-1] = WALL; 
            
            }
            
            
        }
        
    }

}




//Draw the level using grid
for ( var yy = 0; yy < height; yy++) 
{
    for (var xx = 0; xx < width; xx++) 
	{
	    if (grid[# xx, yy] == FLOOR) 
		{
		    var oddsE0 = 100;
			var oddsEHP = 100;
			var oddsEA = 100;
			var oddsESH = 100;
			
		    var exM = xx * CELL_WIDTH+CELL_WIDTH/2;
		    var eyM = yy * CELL_HEIGHT+CELL_HEIGHT/2;
			
			if (irandom(oddsE0) == oddsE0) && (enchufe0 = false)
			{
				instance_create(exM,eyM,o_enchufe); 
				enchufe0 = true;
			}
			if instance_exists(o_enchufe_Father)
			{
				if (irandom(oddsEHP) == oddsEHP) && (enchufeHP = false)
				{
					nextEnchufe = instance_nearest(exM, eyM, o_enchufe_Father)

					if (point_distance(exM, eyM, nextEnchufe.x, nextEnchufe.y) > 300)
					{
						instance_create(exM,eyM,o_enchufe_Hp); 
						enchufeHP = true;
					}
				}
			
				if (irandom(oddsESH) == oddsESH) && (enchufeShield = false)
				{
					nextEnchufe = instance_nearest(exM, eyM, o_enchufe_Father)
					
					if (point_distance(exM, eyM, nextEnchufe.x, nextEnchufe.y) > 300)
					{
						instance_create(exM,eyM,o_enchufe_Shield); 
						enchufeShield = true;
					}
				}
			
				if (irandom(oddsEA) == oddsEA) && (enchufeAmmo = false)
				{
					nextEnchufe = instance_nearest(exM, eyM, o_enchufe_Father)
					
					if (point_distance(exM, eyM, nextEnchufe.x, nextEnchufe.y) > 300)
					{
						instance_create(exM,eyM,o_enchufe_Ammo); 
						enchufeAmmo = true;
					}
				}
			}
	    } 
    }
}


for ( var yyW = 0; yyW < height; yyW++) {
    for (var xxW = 0; xxW < width; xxW++) {
    
var oddsW = 0
     var exW = xxW * CELL_WIDTH+CELL_WIDTH/2;
     var eyW = yyW * CELL_HEIGHT+CELL_HEIGHT/2;
     
     if (irandom(oddsW) == oddsW){
     if (grid[# xxW, yyW] == WALL) {
     instance_create(exW,eyW,o_wall);
     }
     if (grid[# xxW, yyW] == VOID) {
     instance_create(exW,eyW,o_wall);
     }
 
     }
     
     }
     }
     
alarm[0]=60;



if (!enchufe0) || (!enchufeHP) || (!enchufeAmmo) || (!enchufeShield)
{
	room_restart();
}





