/// @description Inserte aquí la descripción
// Puede escribir su código en este editor







// Inherit the parent event
event_inherited();

if (charge >= 200) && (soundActive == false)
{
	soundActive = true;
	audio_play_sound_on(global.audioEmitter, snd_EnchufeActive, false, 50)
}