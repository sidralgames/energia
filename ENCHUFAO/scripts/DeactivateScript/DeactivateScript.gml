// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function DeactivateScript()
{
	instance_deactivate_layer("Walls");
	instance_deactivate_object(o_wall);
}