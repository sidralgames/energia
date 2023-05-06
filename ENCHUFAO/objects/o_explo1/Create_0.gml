/// @description Insert description here
// You can write your code in this editor
depth = layer_get_depth("Bullets")
audio_play_sound(snd_explo1,50,false)

lightExplo= instance_create_layer(x,y,"Light",o_TestLight);

shockwave = instance_create(x,y,o_shockwave)

shockwave.image_xscale = 25;
shockwave.image_yscale = 25;

shockwave.image_xscale = lightExplo.light [| eLight.Range] / 15;
shockwave.image_yscale = lightExplo.light [| eLight.Range] / 15;