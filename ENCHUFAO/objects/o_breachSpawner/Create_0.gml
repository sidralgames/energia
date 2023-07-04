/// @description Insert description here
// You can write your code in this editor
global.totalEnemiesOnScreen = 0;
global.BossBreach_HPMax = 100;
global.BossBreach_HP = global.BossBreach_HPMax ;
SetupLevelBoss();

breachBossRetryTime = 180;
breachRetryTime = 60;
breachRetryTimeInitial = random_range(30,50)

alarm[0] = breachRetryTime;
alarm[2] = 30;



if !audio_is_playing(snd_song)
{
	audio_play_sound(snd_song, 50, true)
}

breachesCount = 0;
bossCount = 0;
canBreach = true;

