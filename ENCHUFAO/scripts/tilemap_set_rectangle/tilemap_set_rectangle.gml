// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function tilemap_set_rectangle(){
// tilemap_set_rectangle(tilemap_element_id, tiledata, cell_x1, cell_y1, cell_x2, cell_y2)
/// @desc tilemap_set_rectangle(tilemap_element_id,tiledata,cell_x1,cell_y1,cell_x2,cell_y2)
/// @param tilemap_element_id
/// @param tiledata
/// @param cell_x1
/// @param cell_y1
/// @param cell_x2
/// @param cell_y2

var rex = abs(argument4 - argument2);
var rey = abs(argument5 - argument3);

var celx = argument2;
var cely = argument3;

var mox = sign(argument4 - argument2);
var moy = sign(argument5 - argument3);


repeat ((rey+1)*(rex+1)) {
    tilemap_set(argument0,argument1,celx,cely)
    celx = celx + mox
    if celx == (argument4 + mox) then {
        celx = argument2
        cely = cely + moy
    }
};
}