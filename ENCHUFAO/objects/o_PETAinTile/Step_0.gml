/// @description Insert description here
// You can write your code in this editor

if (!tile_meeting(x,y,"Tiles"))
{
	instance_destroy();
	instance_create_layer(x,y,"Enchufes",peta);
}



