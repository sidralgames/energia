/// @description Insert description here
// You can write your code in this editor
global.totalEnemiesOnLevel = 0;
global.BossBreach_HPMax = 150;
global.BossBreach_HP = global.BossBreach_HPMax ;
SetupLevelBoss();

breachBossRetryTime = 50;
breachRetryTime = 60;
breachRetryTimeInitial = random_range(30,40)

alarm[0] = breachRetryTime;
alarm[2] = 30;



//if audio_is_playing(global.song)
//{
//	audio_stop_sound(global.song)
//}

//if !audio_is_playing(snd_songBossBreach)
//{
//	audio_play_sound_on(global.audioEmitter,snd_songBossBreach, true, 50)
//}



breachesCount = 0;
bossCount = 0;
canBreach = false;

