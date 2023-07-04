/// @description Insert description here
// You can write your code in this editor
global.totalEnemiesOnScreen = 0;
global.BossBreach_HPMax = 100;
global.BossBreach_HP = global.BossBreach_HPMax ;
SetupLevelBoss();

breachBossRetryTime = 180;
breachRetryTime = 60;

alarm[0] = breachRetryTime;
alarm[2] = 30;



if !audio_is_playing(snd_song)
{
	audio_play_sound(snd_song, 50, true)
}



