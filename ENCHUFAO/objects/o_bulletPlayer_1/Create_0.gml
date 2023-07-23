/// @description Insert description here
// You can write your code in this editor

_hpush = 0;
_vpush = 0;

bnc = 0.5;
bounces = 0;

hsp_f = 0;
vsp_f = 0;

audio_play_sound_on(global.audioEmitter,snd_shoot1,false, 50)
lightBullet= instance_create_layer(x,y,"Light",o_TestLight_Bullet);