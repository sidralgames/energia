/// @description Insert description here
// You can write your code in this editor
Controls_Input();


if !instance_exists(o_playerShip) && (o_nextRoom.canSelectShip)
{
	if (key_rightP) 
	{
		audio_play_sound_on(global.audioEmitter,snd_moveMenu,false, 50);
		selected +=1;
		o_nextRoom.initialX = 380;
		o_nextRoom.alphaSprite = 0;
		o_nextRoom.scaleArrowsR =0.5;
	}
	
	if (key_leftP)
	{
		audio_play_sound_on(global.audioEmitter,snd_moveMenu,false, 50);
		selected -=1;
		o_nextRoom.initialX = 260;
		o_nextRoom.alphaSprite = 0;
		o_nextRoom.scaleArrowsL =0.5;
	}

	if (selected < 0)
	{
		selected = global.numberOfShips-1;
	}
	else if (selected > global.numberOfShips-1)
	{
		selected  = 0;
	}

	ship = ds_map_find_value(global.shipList,selected);
		
	switch(ship.position)
	{
		case 0: PlayerStats_Green(); break;
		case 1: PlayerStats_Blue(); break;
		case 2: PlayerStats_Red(); break;
		case 3: PlayerStats_Dark(); break;
		case 4: PlayerStats_Purple(); break;
		case 5: PlayerStats_MP3(); break;
	}
}


