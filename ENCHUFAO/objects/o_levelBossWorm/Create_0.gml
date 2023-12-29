/// @description Insert description here
// You can write your code in this editor
//global.totalEnemiesOnLevel = 0;
//global.BossBreach_HPMax = 150;
//global.BossBreach_HP = global.BossBreach_HPMax ;
alarm[0] = 20;
alarm[2] = 30;

contTiles = 2;

global.enemiesMax =  min(12, 3 + global.level) //1 + (global.level * 2);
global.totalEnemiesOnLevel = 0;
spawners=0;

SetupLevelBossWorm();
	
if !audio_is_playing(global.song)
{
	audio_play_sound_on(global.audioEmitter,global.song, true, 50)
}

instance_create(x,y,o_WormBossBanner);

