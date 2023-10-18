// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function CreateShieldEnemy(argument0, argument1, argument2)
{
	haveAShield = true;
	shield = instance_create_layer(x, y, "Enemies", o_shieldOfEnemy);
	shield._hp = argument0;
	shield.scale = argument1;
	shield.sprite_index = argument2;
}