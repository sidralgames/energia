// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function CreateDiscTrapWall()
{
	//-----SHOT UP-----//
	if (!collision_line(x,y,x,y-62, o_wall, false, true)) && (oddsDisc = irandom(oddsDisc))
	{
		for(var i = 0; i < max_length; i++)
		{
			var ly = yy + lengthdir_y(i, 90);
			if place_meeting(x,ly,o_wall)	
			{
				max_length=i;
			}
		}
		disc = instance_create_layer(x,y-16,"Laser",o_discTrap);
		disc.long = max_length;
		disc.image_yscale = 1;
		disc.image_angle = 0;
		disc.face = 0;
	}
	//-----SHOT DOWN-----//
	if (!collision_line(x,y,x,y+62, o_wall, false, true)) && (oddsDisc = irandom(oddsDisc))
	{
		for(var i = 0; i < max_length; i++)
		{
			var ly = yyD + lengthdir_y(i, 270);
			if place_meeting(x,ly,o_wall)	
			{
				max_length=i;
			}
		}
		disc = instance_create_layer(x,y+16,"Laser",o_discTrap);
		disc.long = max_length;
		disc.image_yscale = -1;
		disc.image_angle = 0;
		disc.face = 1;
	}
	//-----SHOT lEFT-----//
	if (!collision_line(x,y,x-62,y, o_wall, false, true)) && (oddsDisc = irandom(oddsDisc))
	{
		for(var i = 0; i < max_length; i++)
		{
			var lx = xxL + lengthdir_x(i, 180);
			if place_meeting(lx,y,o_wall)	
			{
				max_length=i;
			}
		}
		disc = instance_create_layer(x-16,y,"Laser",o_discTrap);
		disc.long = max_length;
		disc.image_yscale = 1;
		disc.image_angle = 90;
		disc.face = 2;
	}
	//-----SHOT RIGHT-----//
	if (!collision_line(x,y,x+62,y, o_wall, false, true)) && (oddsDisc = irandom(oddsDisc))
	{
		for(var i = 0; i < max_length; i++)
		{
			var lx = xxR + lengthdir_x(i, 0);
			if place_meeting(lx,y,o_wall)	
			{
				max_length=i;
			}
		}
		disc = instance_create_layer(x+16,y,"Laser",o_discTrap);
		disc.long = max_length;
		disc.image_yscale = 1;
		disc.image_angle = 270;
		disc.face = 3;
	}
}