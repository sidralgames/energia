// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function SetTimeSlow()
{
	global.slowmilisecs+= (delta_time*0.000001)*room_speed;
	
}