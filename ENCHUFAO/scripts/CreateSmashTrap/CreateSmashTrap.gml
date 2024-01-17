// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function CreateSmashTrap()
{
	//----- VERTICAL ------//
	if (!collision_line(x,y,x,y+32, o_wall, false, true)) 
	&& (collision_line(x,y,x,y+70, o_wall, false, true)) && (oddsSmasher = irandom(oddsSmasher))
	{
		
		smasher = instance_create_layer(x,y+16,"Laser",o_smasher);

	}
}