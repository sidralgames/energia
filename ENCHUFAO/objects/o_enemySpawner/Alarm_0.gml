/// @description Insert description here
// You can write your code in this editor
if instance_exists(o_playerShip)
{

	var cx = x+random_range(100,-100)//width div 2;
	var cy = y+random_range(100,-100);//height div 2;

	if (!place_meeting(cx,cy,o_wall)) 
	{
		instance_create_layer(cx, cy, "Player", o_enemy)
	}
	else
	{
		alarm[1] = 10;
	}
	
}

alarm[0] = random_range(140,200) - (10*global.level);




