/// @description Insert description here
// You can write your code in this editor
//global.totalEnemiesOnScreen = 0;
//global.BossBreach_HPMax = 150;
//global.BossBreach_HP = global.BossBreach_HPMax ;
SetupLevelBoss2();

//breachBossRetryTime = 50;
//breachRetryTime = 60;
//breachRetryTimeInitial = random_range(30,40)

//alarm[0] = breachRetryTime;
//alarm[2] = 30;



if !audio_is_playing(snd_song)
{
	audio_play_sound_on(global.audioEmitter,snd_song, true, 50)
}

//breachesCount = 0;
//bossCount = 0;
//canBreach = false;
