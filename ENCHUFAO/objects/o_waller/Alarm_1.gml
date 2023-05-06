/// @description Insert description here
// You can write your code in this editor


var cx = 1*(irandom(10)+1)//width div 2;
var cy = 1*(irandom(5)+1);//height div 2;


instance_create_layer(cx*CELL_WIDTH+CELL_WIDTH/2, cy*CELL_HEIGHT+CELL_HEIGHT/2, "Player", o_enemy);

alarm[1] = 140;

