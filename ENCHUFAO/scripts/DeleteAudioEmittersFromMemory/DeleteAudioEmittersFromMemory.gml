// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function DeleteAudioEmittersFromMemory()
{
	audio_bus_clear_emitters(delay_bus);
	audio_emitter_free(global.audioEmitter);
	
	audio_bus_clear_emitters(pito_bus);
	audio_emitter_free(global.pito_emitter);
}