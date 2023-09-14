/// @description Insert description here
// You can write your code in this editor
shockwave = instance_create(x,y,o_shockwave)
instance_create(x,y,o_shockwaveTiles2)
shockwave.depth = depth+1;
screenShake(8,60);
drawflash = true
alarm[0] = 1;
