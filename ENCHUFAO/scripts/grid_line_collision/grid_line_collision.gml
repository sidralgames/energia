// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function grid_line_collision(){
///grid_line_collision(x1,y1,x2,y2,pixelInterval)
var x1 = argument0;
var y1 = argument1;
var x2 = argument2;
var y2 = argument3;
var pixelInterval = argument4;
var dis = 0;
var maxDis = point_distance(x1,y1,x2,y2);
var dir = point_direction(x1,y1,x2,y2);
var checks = maxDis/pixelInterval;
repeat (checks)
{
var xCheck = x1 + lengthdir_x(dis,dir);
var yCheck = y1 + lengthdir_y(dis,dir);

var collision = (global.wallgrid_[# xCheck div CELL_WIDTH, yCheck div CELL_HEIGHT]) != FLOOR;
if (collision)
{
return true;
}
dis += pixelInterval;
}
return false;
}