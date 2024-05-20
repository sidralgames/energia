/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if (canChangeSongCont <= 0) && (changing = true)
{
	changing = false;
	audio_stop_sound(song);
	song = choose(sndEasyLoverNacho, snd_songBossBreach);
	audio_play_sound_on(global.pito_emitter, song,true, 50);
	canChangeSongCont = 90;
}

if (canChangeSongCont >= 0)
{
	canChangeSongCont --;
}

MoveZeroGrv();