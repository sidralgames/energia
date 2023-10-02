/// @description Insert description here
// You can write your code in this editor
//global.totalEnemiesOnScreen = 0;
//global.BossBreach_HPMax = 150;
//global.BossBreach_HP = global.BossBreach_HPMax ;
alarm[0] = 20;
alarm[2] = 30;
SetupLevelBoss2();
_wall_map_id = layer_tilemap_get_id("Tiles");

	//set up grid
	width_ = room_width div CELL_WIDTH;
	height_ = room_height div CELL_HEIGHT;
	
if !audio_is_playing(global.song)
{
	audio_play_sound_on(global.audioEmitter,global.song, true, 50)
}

