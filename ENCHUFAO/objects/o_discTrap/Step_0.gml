/// @description Insert description here
// You can write your code in this editor

switch(face)
{
	case 0:
	{
		colPlayer = collision_rectangle(x-2,y,x+2,y-16-long,o_playerShip,false,true);
		colEnemy = collision_rectangle(x-2,y,x+2,y-16-long,o_enemyP,false,true);
		direBullet = 90;
		yoff = -10;
		xoff = 0;
	}
	break;
	case 1:
	{
		colPlayer = collision_rectangle(x-2,y,x+2,y+16+long,o_playerShip,false,true);
		colEnemy = collision_rectangle(x-2,y,x+2,y+16+long,o_enemyP,false,true);
		direBullet = 270;
		yoff = 10;
		xoff = 0;
	}
	break;
	case 2:
	{
		colPlayer = collision_rectangle(x+2,y+2,x-16-long,y-2,o_playerShip,false,true);
		colEnemy = collision_rectangle(x+2,y+2,x-16-long,y-2,o_enemyP,false,true);
		direBullet = 180;
		yoff = 0;
		xoff = -10;
	}
	break;
	case 3:
	{
		colPlayer = collision_rectangle(x-2,y+2,x+16+long,y-2,o_playerShip,false,true);
		colEnemy = collision_rectangle(x-2,y+2,x+16+long,y-2,o_enemyP,false,true);
		direBullet = 0
		yoff = 0;
		xoff = 10;
	}
	break;
}

inScreen =  (x > __view_get( e__VW.XView, 0 )-50 && x < __view_get( e__VW.XView, 0 )+710) &&
(y > __view_get( e__VW.YView, 0 )-50 && y < __view_get( e__VW.YView, 0 )+410)


if (inScreen)
{
	if ( ((colPlayer) && (global.invisibleCloak == false)) || (colEnemy) ) && (trapActive = false) 
	{
		trapActive = true;
		alarm[1] = 30;
	}

	if (trapActive = true) && (alarm[1] <= 0)
	{
		disc = instance_create_layer(x+xoff, y+yoff, "Laser", o_bulletDisc)
		disc.speed = 2;
		disc.direction = direBullet;
		trapActive = false;
	}
}
	
if (global.changingTiles)
{
	if !tile_meeting(x-xoff,y-yoff,"Tiles")
	{
		instance_destroy();
	}
}






	