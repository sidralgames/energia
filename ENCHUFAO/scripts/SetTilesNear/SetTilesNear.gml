// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function SetTilesNear(argument0, argument1, argument2, argument3)
{

	var w_left = 0;
	var w_downleft = 0;
	var w_up = 0;
	var w_upright = 0;
	var w_upleft = 0;
	
	for (var _y = argument0; _y < argument1; _y++)
	{
		for (var _x = argument2; _x < argument3; _x++)
		{
			if (global.wallgrid_[# _x, _y] != FLOOR) 
			{
				if (_x - 1 >= 0) {
					var w_left = global.wallgrid_[# _x-1, _y] == VOID;	
					var w_downleft = global.wallgrid_[# _x-1, _y+1] == VOID;
				}
				if (_y - 1 >= 0) {
					var w_up = global.wallgrid_[# _x, _y-1] == VOID;
					var w_upright = global.wallgrid_[# _x+1, _y-1] == VOID;
				}
				if (_x - 1 >= 0 && _y - 1 >= 0 ) { 
					var w_upleft = global.wallgrid_[# _x-1, _y-1] == VOID;
				}
				
				var w_right = global.wallgrid_[# _x+1, _y] == VOID;
				var w_down = global.wallgrid_[# _x, _y+1] == VOID;				
				var w_downright = global.wallgrid_[# _x+1, _y+1] == VOID;
				
			
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
	
}