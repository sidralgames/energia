// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerCreateSmoke()
{
	if (tocado) && (creatingSmoke = false)
	{
		creatingSmoke = true;
		contSmoke = 440 / global.hp
		side = choose(1,-1)
	}

	if (contSmoke<=0)
	{
		creatingSmoke = false
	}

	if (global.hp<=1)
	{
		contSmoke = 0;
		contBurnPart--;
	
		if (contBurnPart <= 0)
		{
			contBurnPart = random_range(5,7) ;
			part_particles_create(global.partSmoke_sys, x+lengthdir_x(random_range(((sprite_height-4)/2),((sprite_height-6)/2))*side, _angle+90),y+lengthdir_y(random_range(((sprite_height-4)/2),((sprite_height-6)/2))*side, _angle+90), global.partSmoke, 1);
		}
	
	}
	else
	{
		if (contSmoke > 0) 
		{
			contSmoke--;
			contBurnPart--;
	
			if (contBurnPart <= 0)
			{
				contBurnPart = random_range(global.hp+2,global.hp+3) ;
				part_particles_create(global.partSmoke_sys, x+lengthdir_x(((sprite_height-5)/2)*side, _angle+90),y+lengthdir_y(((sprite_height-5)/2)*side, _angle+90), global.partSmoke, 1);
			}
	
		}
	}
}