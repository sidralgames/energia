/// @description GRID
instance_create(x,y,o_gridRoom)

if !audio_is_playing(global.song)
{
	audio_play_sound_on(global.audioEmitter,global.song, true, 100)
}





